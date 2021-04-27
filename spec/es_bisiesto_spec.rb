require './lib/bisiesto.rb'

RSpec.describe "bisiesto" do
    it "deberia devolver true para el anio 4 " do
        expect(es_bisiesto(4)).to eq(true)
    end
    it "deberia devolver false para el anio 5" do
        expect(es_bisiesto(5)).to eq(false)
    end

    it "deberia devolver true para cualquier anio que es divisible entre 4"do
        expect(es_bisiesto(108)).to  eq(true)
    end
    it "deberia devolver false para culaquier anio que NO es divisible entre 4"do
        expect(es_bisiesto(810)).to  eq(false)
    end

    it "deberia devolver true para cualquier anio que es divisible entre 4 pero NO entre 100"do
        expect(es_bisiesto(1424)).to eq(true)
    end
    it "deberia devolver false para cualquier anio que es divisible entre 4 y tambien entre 100"do
        expect(es_bisiesto(1400)).to eq(false)
    end

    it "deberia devolver true para cualquier anio que es divisible entre 4 pero NO entre 100 a no ser que sea divisible entre 400"do
        expect(es_bisiesto(1600)).to eq(true)
    end
    it "deberia devolver false para cualquier anio que es divisible entre 4 y tambien divisible entre 100 pero que NO sea divisible entre 400"do
    expect(es_bisiesto(1800)).to eq(false)
end
end

