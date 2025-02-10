import { IsNotEmpty, IsNumber, IsString, Min, MinLength } from "class-validator";

export class CreateProductDto {

    @IsString()
    @IsNotEmpty()
    @MinLength(1)
    name: string;

    @IsString()
    @IsNotEmpty()
    description: string;

    @IsNumber({maxDecimalPlaces: 4})
    @IsNotEmpty()
    @Min(0)
    price: number;

    @IsNumber()
    @IsNotEmpty()
    quantity: number;

}
