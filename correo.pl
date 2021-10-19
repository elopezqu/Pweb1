#!/usr/bin/perl
use strict;
use warnings;
## Variable
my $nombre;
my $dominio;
## Se le pide el usuario
print "Ingrese su nombre: ";
$nombre = <STDIN>;
## Se le pide el dominio
print "Ingrese su dominio: ";
$dominio = <STDIN>;
print "Su correo es:\n";
## Para quitarle el salto de linea ponemos chomp($arr)
chomp($nombre);
## Despues todo se imprime decorrido
print $nombre;
print "@";
print $dominio;
