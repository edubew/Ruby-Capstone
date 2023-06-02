require 'rspec'
require_relative '../classes/book'
require_relative '../classes/item'

describe Book do
  let(:book) { Book.new('Publisher', 'good', Date.parse('2020-12-12'), 'Book Title') }

  describe '#initialize' do
    it 'assigns the book publisher' do
      expect(book.publisher).to eq('Publisher')
    end

    it 'assigns the book cover_state' do
      expect(book.cover_state).to eq('good')
    end

    it 'assigns the book name' do
      expect(book.name).to eq('Book Title')
    end

    it 'assigns a random ID' do
      expect(book.id).to be_a(Integer)
    end

    it 'assigns the book publish_date' do
      expect(book.publish_date).to eq(Date.parse('2020-12-12'))
    end
  end

  describe '#can_be_archived?' do
    context 'when cover_state is bad and can be archived' do
      let(:book) { Book.new('Publisher', 'bad', Date.parse('2020-12-12'), 'Book Title') }

      it 'should return false' do
        expect(book.can_be_archived?).to be(false)
      end
    end

    context 'when cover_state is good and can be archived' do
      it 'should return false' do
        expect(book.can_be_archived?).to be(false)
      end
    end

    context 'when publish_date is in the future and can be archived' do
      let(:book) { Book.new('Publisher', 'bad', Date.parse('2099-01-01'), 'Book Title') }

      it 'should return false' do
        expect(book.can_be_archived?).to be(false)
      end
    end
  end

  describe '#to_h' do
    it 'returns a hash representation of the book' do
      expected_hash = {
        name: 'Book Title',
        publisher: 'Publisher',
        publish_date: Date.parse('2020-12-12'),
        cover_state: 'good'
      }
      expect(book.to_h).to eq(expected_hash)
    end
  end
end
