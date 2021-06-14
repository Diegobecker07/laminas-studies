<?php

use Laminas\Db\Adapter;

return [
    'service_manager' => [
        'abstract_factories' => [
            Adapter\AdapterAbstractServiceFactory::class
        ],
        'factories' => [
            Adapter\AdapterInterface::class => Adapter\AdapterServiceFactory::class
        ],
        'aliases' => [
            Adapter\Adapter::class => Adapter\AdapterInterface::class
        ]
    ],
    'db' => [
        'driver' => 'Pdo',
        'dsn' => 'mysql:dbname=quiz;hostname=localhost',
        'driver_options' => [
            PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES \'utf8\''
        ]
    ]
];
