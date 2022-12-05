export function msg(): void {
  console.log('sum of 2 and 3 equals ' + sum(2, 3));
}

export function sum(x: number, y: number): number {
  return x + y;
}
