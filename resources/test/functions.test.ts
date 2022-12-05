import { sum } from '../src/functions';
describe('test add function', () => {
  it('should return 9 for sum(4,5)', () => {
    expect(sum(4, 5)).toBe(9);
  });
  it('should return 5 for sum(2,3)', () => {
    expect(sum(2, 3)).toBe(5);
  });
});
