#!/usr/bin/perl
use strict;
use warnings;
## Variables:
my $cantidad;
my $contador = 0;
my @arr;
my $promedio;
## Se pide el numero de notas a promediar
print "Ingrese la cantidad de notas: ";
$cantidad = <STDIN>;
## Se va almacenando las notas en un arreglo;
while ($contador<$cantidad){
  print "Ingrese nota: ";
  my $notas = <STDIN>;
  $arr[$contador]=$notas;
  $contador++;
}
## Se llama a la funcion promedio
$promedio = promedio(@arr);
print "El promedio: ".$promedio."\n";

## Funcion promedio
sub promedio {
  ## Variable
  my @notas = @_;
  my @copia = sort {$a <=> $b}@notas;
  my $cantidad = @notas;
  my $suma = 0;
  my $aux;
  ## Se duplicael mayor y re elimina el menor
  $copia[$cantidad-1]*=2;
  shift @copia;
  $cantidad = @copia;
  ## Un foreach para la suma de las notas
  foreach $aux (@copia){
    $suma = $aux+$suma;
  }
  ## Se retorna el promedio
  return $suma/$cantidad;
}
