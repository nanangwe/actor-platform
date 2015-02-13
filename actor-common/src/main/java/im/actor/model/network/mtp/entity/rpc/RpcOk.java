package im.actor.model.network.mtp.entity.rpc;

import im.actor.model.network.mtp.entity.ProtoStruct;
import im.actor.model.util.DataInput;
import im.actor.model.util.DataOutput;

import java.io.IOException;

public class RpcOk extends ProtoStruct {

    public static final byte HEADER = (byte) 0x01;

    public int responseType;
    public byte[] payload;

    public RpcOk(DataInput stream) throws IOException {
        super(stream);
    }

    public RpcOk(int responseType, byte[] payload) {
        this.responseType = responseType;
        this.payload = payload;
    }

    public int getResponseType() {
        return responseType;
    }

    public byte[] getPayload() {
        return payload;
    }

    @Override
    protected byte getHeader() {
        return HEADER;
    }

    @Override
    protected void writeBody(DataOutput bs) throws IOException {
        bs.writeInt(responseType);
        bs.writeProtoBytes(payload, 0, payload.length);
    }

    @Override
    protected void readBody(DataInput bs) throws IOException {
        responseType = bs.readInt();
        payload = bs.readProtoBytes();
    }


    @Override
    public String toString() {
        return "RpcOk{" + responseType + "]";
    }
}