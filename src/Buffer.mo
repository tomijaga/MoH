import Buffer "mo:base/Buffer";

module{
    public func swap<T>(buf: Buffer.Buffer<T>, a: Int, b: Int){
        let tmp = buf.get(a);
        buf.put(a, buf.get(b));
        buf.put(b, tmp);
    };

    public func reverse<T>(buf: Buffer.Buffer<T>){
        var i = 0;
        var j = buf.size() - 1;
        while i < j{
            swap(buf, i, j);
            i += 1;
            j -= 1;
        };
    };
}