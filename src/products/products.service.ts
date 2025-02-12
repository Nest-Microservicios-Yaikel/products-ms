import { Injectable, Logger, OnModuleInit } from '@nestjs/common';
import { CreateProductDto } from './dto/create-product.dto';
import { UpdateProductDto } from './dto/update-product.dto';
import { PrismaClient } from '@prisma/client';
import { PaginationDto } from 'src/common';

@Injectable()
export class ProductsService extends PrismaClient implements OnModuleInit {
  private readonly logger = new Logger('ProductService');

  async onModuleInit() {
    await this.$connect();
    this.logger.log('Database Connected');
  }

  constructor() {
    super();
  }

  async create(createProductDto: CreateProductDto) {
    return this.product.create({
      data: createProductDto,
    });
  }

  async findAll(paginationDto: PaginationDto) {
    const { page, limit } = paginationDto;

    const totalPages = await this.product.count({
      where: {
        available: true,
      },
    });
    const lastPage = Math.ceil(totalPages / limit);

    const product = {
      data: await this.product.findMany({
        skip: (page - 1) * limit,
        take: limit,
        where: {
          available: true,
        },
      }),
      meta: {
        total: totalPages,
        page: page,
        lastPage: lastPage,
      },
    };

    const { data, meta } = product;
    const productsDetails = data.map(
      ({ id, name, description, price, quantity }) => ({
        id,
        name,
        description,
        price,
        quantity,
      }),
    );

    return { productsDetails, meta };
  }

  async findOne(id: number) {
    return this.product.findUnique({
      where: { id, available: true },
    });
  }

  async update(id: number, updateProductDto: UpdateProductDto) {
    
    const { id: _, ...data } = updateProductDto;

    return this.product.update({
      where: { id, available: true },
      data: data,
    });
  }

  async remove(id: number) {
    return this.product.update({
      where: { id },
      data: { available: false },
    });
  }
}
