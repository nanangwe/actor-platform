package im.actor.model.api.rpc;
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

public class ResponseAuth extends Response {

    public static final int HEADER = 0x5;
    public static ResponseAuth fromBytes(byte[] data) throws IOException {
        return Bser.parse(new ResponseAuth(), data);
    }

    private long publicKeyHash;
    private User user;
    private List<ContactRecord> contacts;
    private Config config;

    public ResponseAuth(long publicKeyHash, User user, List<ContactRecord> contacts, Config config) {
        this.publicKeyHash = publicKeyHash;
        this.user = user;
        this.contacts = contacts;
        this.config = config;
    }

    public ResponseAuth() {

    }

    public long getPublicKeyHash() {
        return this.publicKeyHash;
    }

    public User getUser() {
        return this.user;
    }

    public List<ContactRecord> getContacts() {
        return this.contacts;
    }

    public Config getConfig() {
        return this.config;
    }

    @Override
    public void parse(BserValues values) throws IOException {
        this.publicKeyHash = values.getLong(1);
        this.user = values.getObj(2, new User());
        List<ContactRecord> _contacts = new ArrayList<ContactRecord>();
        for (int i = 0; i < values.getRepeatedCount(4); i ++) {
            _contacts.add(new ContactRecord());
        }
        this.contacts = values.getRepeatedObj(4, _contacts);
        this.config = values.getObj(3, new Config());
    }

    @Override
    public void serialize(BserWriter writer) throws IOException {
        writer.writeLong(1, this.publicKeyHash);
        if (this.user == null) {
            throw new IOException();
        }
        writer.writeObject(2, this.user);
        writer.writeRepeatedObj(4, this.contacts);
        if (this.config == null) {
            throw new IOException();
        }
        writer.writeObject(3, this.config);
    }

    @Override
    public int getHeaderKey() {
        return HEADER;
    }
}