import { Type } from 'class-transformer';
import {
  IsInt,
  IsNotEmpty,
  IsNumber,
  IsString,
  Min,
  MinLength,
} from 'class-validator';

export class CreateProductDto {
  @IsString()
  @IsNotEmpty()
  @MinLength(1)
  name: string;

  @IsString()
  @IsNotEmpty()
  description: string;

  @IsNumber({ maxDecimalPlaces: 4 })
  @IsNotEmpty()
  @Type(() => Number)
  @Min(0)
  price: number;

  @IsNumber()
  @IsNotEmpty()
  @Type(() => Number)
  @IsInt()
  quantity: number;
}
function IsFloat(): (target: CreateProductDto, propertyKey: 'price') => void {
  throw new Error('Function not implemented.');
}
