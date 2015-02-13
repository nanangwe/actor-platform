package im.actor.model.api.updates;
/*
 *  Generated by the Actor API Scheme generator.  DO NOT EDIT!
 */

import com.droidkit.bser.Bser;
import com.droidkit.bser.BserObject;
import com.droidkit.bser.BserValues;
import com.droidkit.bser.BserWriter;
import java.io.IOException;
import im.actor.model.network.parser.*;
import java.util.List;
import java.util.ArrayList;
import im.actor.model.api.*;

public class UpdateChatClear extends Update {

    public static final int HEADER = 0x2f;
    public static UpdateChatClear fromBytes(byte[] data) throws IOException {
        return Bser.parse(new UpdateChatClear(), data);
    }

    private Peer peer;

    public UpdateChatClear(Peer peer) {
        this.peer = peer;
    }

    public UpdateChatClear() {

    }

    public Peer getPeer() {
        return this.peer;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.peer = values.getObj(1, new Peer());
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        if (this.peer == null) {
            throw new IOException();
        }
        writer.writeObject(1, this.peer);
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}