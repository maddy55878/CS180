class Dessert 
    def initialize(name, calories)
        @name = name 
        @calories = calories
        end
        
  def healthy?
    return true ? @calories< 200 : false 
    end
  def delicious?
    return true 
    end 
end

class JellyBean < Dessert
  
  def initialize(name, calories, flavor)
      @name = name 
        @calories = calories
    @flavor = flavor 
  end
  def delicious?
    return super ? @flavor != 'licorice' : false
    end 
  end
  
  coffeeCake = Dessert.new('coffee cake ', 500)
  p coffeeCake.healthy?
  p coffeeCake.delicious?
  
  jb1 = JellyBean.new('Jelly Bean', 100, 'cotton candy')
    jb2 = JellyBean.new('Jelly Bean', 100, 'licorice')
    
    p jb1.healthy?
    p jb2.delicious?