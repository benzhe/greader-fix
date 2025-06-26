.class public abstract Ld58;
.super Le58;
.source "SourceFile"

# interfaces
.implements Lt68;
.implements Lv68;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Le58;",
        ">",
        "Le58;",
        "Lt68;",
        "Lv68;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le58;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic I(JLb78;)Lt68;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ld58;->T(JLb78;)Ld58;

    move-result-object p1

    return-object p1
.end method

.method public K(Lr48;)Lf58;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr48;",
            ")",
            "Lf58<",
            "*>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lg58;

    invoke-direct {v0, p0, p1}, Lg58;-><init>(Le58;Lr48;)V

    return-object v0
.end method

.method public bridge synthetic P(JLb78;)Le58;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Ld58;->T(JLb78;)Ld58;

    move-result-object p1

    return-object p1
.end method

.method public T(JLb78;)Ld58;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lb78;",
            ")",
            "Ld58<",
            "TD;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p3, Lr68;

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p3

    check-cast v0, Lr68;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p1, Ll48;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " not valid for chronology "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Le58;->M()Lj58;

    move-result-object p3

    invoke-virtual {p3}, Lj58;->D()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ll48;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    const/16 p3, 0x3e8

    .line 5
    invoke-static {p1, p2, p3}, Lkt7;->r(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ld58;->W(J)Ld58;

    move-result-object p1

    return-object p1

    :pswitch_1
    const/16 p3, 0x64

    .line 6
    invoke-static {p1, p2, p3}, Lkt7;->r(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ld58;->W(J)Ld58;

    move-result-object p1

    return-object p1

    :pswitch_2
    const/16 p3, 0xa

    .line 7
    invoke-static {p1, p2, p3}, Lkt7;->r(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ld58;->W(J)Ld58;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Ld58;->W(J)Ld58;

    move-result-object p1

    return-object p1

    .line 9
    :pswitch_4
    invoke-virtual {p0, p1, p2}, Ld58;->V(J)Ld58;

    move-result-object p1

    return-object p1

    :pswitch_5
    const/4 p3, 0x7

    .line 10
    invoke-static {p1, p2, p3}, Lkt7;->r(JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ld58;->U(J)Ld58;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_6
    invoke-virtual {p0, p1, p2}, Ld58;->U(J)Ld58;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    invoke-virtual {p0}, Le58;->M()Lj58;

    move-result-object v0

    invoke-interface {p3, p0, p1, p2}, Lb78;->k(Lt68;J)Lt68;

    move-result-object p1

    invoke-virtual {v0, p1}, Lj58;->l(Lt68;)Le58;

    move-result-object p1

    check-cast p1, Ld58;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract U(J)Ld58;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ld58<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract V(J)Ld58;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ld58<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract W(J)Ld58;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ld58<",
            "TD;>;"
        }
    .end annotation
.end method
