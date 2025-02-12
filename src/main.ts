import { NestFactory } from '@nestjs/core';
import { AppModule } from './app.module';
import { Logger, ValidationPipe } from '@nestjs/common';
import { envs } from './config';
import { MicroserviceOptions, Transport } from '@nestjs/microservices';

async function bootstrap() {
  const app = await NestFactory.createMicroservice<MicroserviceOptions>(
    AppModule,
    {
      transport: Transport.TCP,
      options: { port: envs.port },
    },
  );
  const logger = new Logger('Bootstrap');

  app.useGlobalPipes(
    new ValidationPipe({
      whitelist: true,
      forbidNonWhitelisted: true,
      transform: true,
    }),
  );

  // const app = await NestFactory.createMicroservice<MicroserviceOptions>(
  //   AppModule,
  //   {
  //     transport: Transport.TCP,
  //   },
  // );

  await app.listen();
  logger.log(`Products Microservices is running on PORT: ${envs.port} `);
  // ${await app.getUrl()}
}
bootstrap();
