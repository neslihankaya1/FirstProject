Map<String,Decimal> priceMap = new Map<String,Decimal>();
    priceMap.put('laptop',900);
    priceMap.put('phone',1200);
    priceMap.put('airpod',150);

    List <Product__c> proList = new List <Product__c>();
    for(String each : priceMap.keyset()) {
        product__c pro = new product__c();
        pro.name = each;
        pro.price__c = priceMap.get(each);
        proList.add(pro);
    }
    insert proList;