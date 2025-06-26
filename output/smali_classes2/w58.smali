.class public final Lw58;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Externalizable;


# instance fields
.field public e:B

.field public f:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-byte p1, p0, Lw58;->e:B

    .line 4
    iput-object p2, p0, Lw58;->f:Ljava/lang/Object;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lw58;->f:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lw58;->e:B

    packed-switch v0, :pswitch_data_0

    .line 2
    :pswitch_0
    new-instance p1, Ljava/io/StreamCorruptedException;

    const-string v0, "Unknown serialized type"

    invoke-direct {p1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :pswitch_1
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf58;

    .line 4
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La58;

    .line 5
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz48;

    .line 6
    invoke-virtual {v0, v1}, Lf58;->K(Lz48;)Lh58;

    move-result-object v0

    invoke-virtual {v0, p1}, Lh58;->V(Lz48;)Lh58;

    move-result-object p1

    goto/16 :goto_3

    .line 7
    :pswitch_2
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le58;

    .line 8
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr48;

    .line 9
    invoke-virtual {v0, p1}, Le58;->K(Lr48;)Lf58;

    move-result-object p1

    goto/16 :goto_3

    .line 10
    :pswitch_3
    sget-object v0, Lj58;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-interface {p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object p1

    .line 12
    sget-object v0, Lj58;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    sget-object v1, Lo58;->g:Lo58;

    invoke-static {v1}, Lj58;->K(Lj58;)V

    .line 14
    sget-object v1, Lx58;->g:Lx58;

    invoke-static {v1}, Lj58;->K(Lj58;)V

    .line 15
    sget-object v1, Lt58;->g:Lt58;

    invoke-static {v1}, Lj58;->K(Lj58;)V

    .line 16
    sget-object v1, Lq58;->h:Lq58;

    invoke-static {v1}, Lj58;->K(Lj58;)V

    .line 17
    sget-object v1, Ll58;->g:Ll58;

    invoke-static {v1}, Lj58;->K(Lj58;)V

    const-string v2, "Hijrah"

    .line 18
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    sget-object v0, Lj58;->f:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "islamic"

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-class v0, Lj58;

    const-class v1, Lj58;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lj58;

    .line 22
    sget-object v2, Lj58;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Lj58;->D()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-virtual {v1}, Lj58;->C()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 24
    sget-object v3, Lj58;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 25
    :cond_1
    sget-object v0, Lj58;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj58;

    if-eqz v0, :cond_2

    goto :goto_1

    .line 26
    :cond_2
    sget-object v0, Lj58;->f:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj58;

    if-eqz v0, :cond_3

    :goto_1
    move-object p1, v0

    goto/16 :goto_3

    .line 27
    :cond_3
    new-instance v0, Ll48;

    const-string v1, "Unknown chronology: "

    invoke-static {v1, p1}, Ljo;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ll48;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :pswitch_4
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 29
    invoke-static {p1}, Lz58;->K(I)Lz58;

    move-result-object p1

    goto/16 :goto_3

    .line 30
    :pswitch_5
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 31
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 32
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 33
    sget-object v2, Lx58;->g:Lx58;

    .line 34
    new-instance v2, Ly58;

    add-int/lit16 v0, v0, -0x21f

    invoke-static {v0, v1, p1}, Lp48;->c0(III)Lp48;

    move-result-object p1

    invoke-direct {v2, p1}, Ly58;-><init>(Lp48;)V

    goto :goto_2

    .line 35
    :pswitch_6
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 36
    invoke-static {p1}, Lv58;->K(I)Lv58;

    move-result-object p1

    goto :goto_3

    .line 37
    :pswitch_7
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 38
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 39
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 40
    sget-object v2, Lt58;->g:Lt58;

    .line 41
    new-instance v2, Lu58;

    add-int/lit16 v0, v0, 0x777

    invoke-static {v0, v1, p1}, Lp48;->c0(III)Lp48;

    move-result-object p1

    invoke-direct {v2, p1}, Lu58;-><init>(Lp48;)V

    goto :goto_2

    .line 42
    :pswitch_8
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 43
    invoke-static {p1}, Ln58;->K(I)Ln58;

    move-result-object p1

    goto :goto_3

    .line 44
    :pswitch_9
    sget-object v0, Lm58;->l:[I

    .line 45
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 46
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 47
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 48
    sget-object v2, Ll58;->g:Ll58;

    .line 49
    invoke-static {v0, v1, p1}, Lm58;->g0(III)Lm58;

    move-result-object p1

    goto :goto_3

    .line 50
    :pswitch_a
    sget-object v0, Ls58;->h:Ls58;

    .line 51
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 52
    invoke-static {p1}, Ls58;->M(I)Ls58;

    move-result-object p1

    goto :goto_3

    .line 53
    :pswitch_b
    sget-object v0, Lr58;->h:Lp48;

    .line 54
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 55
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 56
    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result p1

    .line 57
    sget-object v2, Lq58;->h:Lq58;

    .line 58
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    new-instance v2, Lr58;

    invoke-static {v0, v1, p1}, Lp48;->c0(III)Lp48;

    move-result-object p1

    invoke-direct {v2, p1}, Lr58;-><init>(Lp48;)V

    :goto_2
    move-object p1, v2

    .line 60
    :goto_3
    iput-object p1, p0, Lw58;->f:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-byte v0, p0, Lw58;->e:B

    iget-object v1, p0, Lw58;->f:Ljava/lang/Object;

    .line 2
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeByte(I)V

    packed-switch v0, :pswitch_data_0

    .line 3
    :pswitch_0
    new-instance p1, Ljava/io/InvalidClassException;

    const-string v0, "Unknown serialized type"

    invoke-direct {p1, v0}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :pswitch_1
    check-cast v1, Li58;

    .line 5
    iget-object v0, v1, Li58;->e:Lg58;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v1, Li58;->f:La58;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v1, Li58;->g:Lz48;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 8
    :pswitch_2
    check-cast v1, Lg58;

    .line 9
    iget-object v0, v1, Lg58;->e:Le58;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v1, Lg58;->f:Lr48;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 11
    :pswitch_3
    check-cast v1, Lj58;

    .line 12
    invoke-virtual {v1}, Lj58;->D()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeUTF(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13
    :pswitch_4
    check-cast v1, Lz58;

    .line 14
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 15
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto/16 :goto_0

    .line 16
    :pswitch_5
    check-cast v1, Ly58;

    .line 17
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-object v0, Lq68;->I:Lq68;

    invoke-virtual {v1, v0}, Lp68;->k(Ly68;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 19
    sget-object v0, Lq68;->F:Lq68;

    invoke-virtual {v1, v0}, Lp68;->k(Ly68;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 20
    sget-object v0, Lq68;->A:Lq68;

    invoke-virtual {v1, v0}, Lp68;->k(Ly68;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto/16 :goto_0

    .line 21
    :pswitch_6
    check-cast v1, Lv58;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 23
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 24
    :pswitch_7
    check-cast v1, Lu58;

    .line 25
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lq68;->I:Lq68;

    invoke-virtual {v1, v0}, Lp68;->k(Ly68;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 27
    sget-object v0, Lq68;->F:Lq68;

    invoke-virtual {v1, v0}, Lp68;->k(Ly68;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 28
    sget-object v0, Lq68;->A:Lq68;

    invoke-virtual {v1, v0}, Lp68;->k(Ly68;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 29
    :pswitch_8
    check-cast v1, Ln58;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    .line 31
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 32
    :pswitch_9
    check-cast v1, Lm58;

    .line 33
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lq68;->I:Lq68;

    invoke-virtual {v1, v0}, Lp68;->k(Ly68;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 35
    sget-object v0, Lq68;->F:Lq68;

    invoke-virtual {v1, v0}, Lp68;->k(Ly68;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 36
    sget-object v0, Lq68;->A:Lq68;

    invoke-virtual {v1, v0}, Lp68;->k(Ly68;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 37
    :pswitch_a
    check-cast v1, Ls58;

    .line 38
    iget v0, v1, Ls58;->e:I

    .line 39
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_0

    .line 40
    :pswitch_b
    check-cast v1, Lr58;

    .line 41
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lq68;->I:Lq68;

    invoke-virtual {v1, v0}, Lp68;->k(Ly68;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 43
    sget-object v0, Lq68;->F:Lq68;

    invoke-virtual {v1, v0}, Lp68;->k(Ly68;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 44
    sget-object v0, Lq68;->A:Lq68;

    invoke-virtual {v1, v0}, Lp68;->k(Ly68;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
