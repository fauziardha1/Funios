func main(){
    let myIDRMoney = 1_500_000
    let myUSDMoney = 3.5
    
    //myIDRMoney value in USD
    print("myIDRMoney is Rp \(myIDRMoney), and it's value in USD is $ \(idrToUSD(rp: myIDRMoney))\n")
    
    // myUSDMoney value in IDR
    print("myUSDMoney is $ \(myUSDMoney), and it's value in IDR is Rp \(usdToIDR(usd: Double(myUSDMoney)))\n")
    
     // pow of tow
    print("Result from \(Int(myUSDMoney)) pow of two is \(powOfTwo(base: Int(myUSDMoney)))")
}
main()

let usdToIDRKeyFactor = 14_500

func idrToUSD(rp:Int)->Double{
    return Double(rp/usdToIDRKeyFactor)
}

func usdToIDR(usd:Double) -> Double{
    return usd * Double(usdToIDRKeyFactor)
}

func powOfTwo(base:Int) -> Int{
    return base*base
}
