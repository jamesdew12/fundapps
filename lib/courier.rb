class Courier
  attr_reader :total_cost
  def initialize
    @total_cost = 0
  end

  def delivery_cost_size(dimensions, weight)
    if dimensions < 10
        parcel = 3
          if weight > 1
            weight_over = weight - 1
            parcel += weight_over*2
          end
        @total_cost += parcel
    elsif dimensions < 50 && dimensions > 9
        parcel = 8
          if weight >= 3
            weight_over = weight - 3
            parcel += weight_over*2
          end
        @total_cost += parcel
    elsif dimensions < 99 && dimensions > 49
        parcel = 15
          if weight >= 6
            weight_over = weight - 6
            parcel += weight_over*2
          end
        @total_cost += parcel
    elsif dimensions > 99
        parcel = 25
        if weight >= 10
          weight_over = weight - 10
          parcel += weight_over*2
        end
      @total_cost += parcel
    elsif weight > 50
        parcel = 50
        weight_over = weight - 50
        parcel += weight_over
      @total_cost += parcel
    end
    end


  def speedy_shipping
    @total_cost += @total_cost
  end
end
