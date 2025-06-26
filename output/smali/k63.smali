.class public final Lk63;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lm63<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final d:Lk63;


# instance fields
.field public final a:Lb93;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb93<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public b:Z

.field public c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lk63;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lk63;-><init>(Z)V

    sput-object v0, Lk63;->d:Lk63;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget v0, Lb93;->k:I

    .line 9
    new-instance v0, La93;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, La93;-><init>(I)V

    .line 10
    iput-object v0, p0, Lk63;->a:Lb93;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 1
    sget p1, Lb93;->k:I

    .line 2
    new-instance p1, La93;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, La93;-><init>(I)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lk63;->a:Lb93;

    .line 5
    invoke-virtual {p0}, Lk63;->j()V

    .line 6
    invoke-virtual {p0}, Lk63;->j()V

    return-void
.end method

.method public static c(Lba3;ILjava/lang/Object;)I
    .locals 2

    .line 1
    invoke-static {p1}, Lb63;->G(I)I

    move-result p1

    .line 2
    sget-object v0, Lba3;->p:Lba3;

    if-ne p0, v0, :cond_1

    .line 3
    move-object v0, p2

    check-cast v0, Le83;

    .line 4
    instance-of v1, v0, Ld53;

    if-eqz v1, :cond_0

    check-cast v0, Ld53;

    :cond_0
    shl-int/lit8 p1, p1, 0x1

    .line 5
    :cond_1
    invoke-static {p0, p2}, Lk63;->d(Lba3;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static d(Lba3;Ljava/lang/Object;)I
    .locals 2

    .line 1
    sget-object v0, Lj63;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_0
    instance-of p0, p1, Lw63;

    if-eqz p0, :cond_0

    .line 4
    check-cast p1, Lw63;

    invoke-interface {p1}, Lw63;->f()I

    move-result p0

    .line 5
    invoke-static {p0}, Lb63;->H(I)I

    move-result p0

    return p0

    .line 6
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 7
    invoke-static {p0}, Lb63;->H(I)I

    move-result p0

    return p0

    .line 8
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lb63;->A(J)I

    move-result p0

    return p0

    .line 9
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lb63;->J(I)I

    move-result p0

    return p0

    .line 10
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    sget-object p0, Lb63;->b:Ljava/util/logging/Logger;

    return v1

    .line 11
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    sget-object p0, Lb63;->b:Ljava/util/logging/Logger;

    return v0

    .line 12
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lb63;->I(I)I

    move-result p0

    return p0

    .line 13
    :pswitch_6
    instance-of p0, p1, Lk53;

    if-eqz p0, :cond_1

    .line 14
    check-cast p1, Lk53;

    invoke-static {p1}, Lb63;->l(Lk53;)I

    move-result p0

    return p0

    .line 15
    :cond_1
    check-cast p1, [B

    .line 16
    sget-object p0, Lb63;->b:Ljava/util/logging/Logger;

    .line 17
    array-length p0, p1

    .line 18
    invoke-static {p0}, Lb63;->I(I)I

    move-result p1

    :goto_0
    add-int/2addr p1, p0

    return p1

    .line 19
    :pswitch_7
    instance-of p0, p1, Lk53;

    if-eqz p0, :cond_2

    .line 20
    check-cast p1, Lk53;

    invoke-static {p1}, Lb63;->l(Lk53;)I

    move-result p0

    return p0

    .line 21
    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lb63;->O(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 22
    :pswitch_8
    instance-of p0, p1, Lf73;

    if-eqz p0, :cond_3

    .line 23
    check-cast p1, Lf73;

    .line 24
    sget-object p0, Lb63;->b:Ljava/util/logging/Logger;

    .line 25
    invoke-virtual {p1}, Lj73;->b()I

    move-result p0

    .line 26
    invoke-static {p0}, Lb63;->I(I)I

    move-result p1

    goto :goto_0

    .line 27
    :cond_3
    check-cast p1, Le83;

    .line 28
    sget-object p0, Lb63;->b:Ljava/util/logging/Logger;

    .line 29
    invoke-interface {p1}, Le83;->g()I

    move-result p0

    .line 30
    invoke-static {p0}, Lb63;->I(I)I

    move-result p1

    goto :goto_0

    .line 31
    :pswitch_9
    check-cast p1, Le83;

    .line 32
    sget-object p0, Lb63;->b:Ljava/util/logging/Logger;

    .line 33
    invoke-interface {p1}, Le83;->g()I

    move-result p0

    return p0

    .line 34
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    sget-object p0, Lb63;->b:Ljava/util/logging/Logger;

    const/4 p0, 0x1

    return p0

    .line 35
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    sget-object p0, Lb63;->b:Ljava/util/logging/Logger;

    return v0

    .line 36
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    sget-object p0, Lb63;->b:Ljava/util/logging/Logger;

    return v1

    .line 37
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lb63;->H(I)I

    move-result p0

    return p0

    .line 38
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lb63;->z(J)I

    move-result p0

    return p0

    .line 39
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 40
    invoke-static {p0, p1}, Lb63;->z(J)I

    move-result p0

    return p0

    .line 41
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    sget-object p0, Lb63;->b:Ljava/util/logging/Logger;

    return v0

    .line 42
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    sget-object p0, Lb63;->b:Ljava/util/logging/Logger;

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p0, Lh83;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lh83;

    invoke-interface {p0}, Lh83;->C()Lh83;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 4
    check-cast p0, [B

    .line 5
    array-length v0, p0

    new-array v0, v0, [B

    .line 6
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method public static h(Lm63;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lm63;->J()Lba3;

    move-result-object v0

    .line 2
    sget-object v1, Lu63;->a:Ljava/nio/charset/Charset;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v1, Lj63;->a:[I

    .line 5
    iget-object v0, v0, Lba3;->e:Lea3;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 7
    :pswitch_0
    instance-of v0, p1, Le83;

    if-nez v0, :cond_0

    instance-of v0, p1, Lf73;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p1, Lw63;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 9
    :pswitch_2
    instance-of v0, p1, Lk53;

    if-nez v0, :cond_0

    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    .line 10
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_2

    .line 11
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_2

    .line 12
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_2

    .line 13
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_2

    .line 14
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_2

    .line 15
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_2

    return-void

    .line 16
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 17
    invoke-interface {p0}, Lm63;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    .line 18
    invoke-interface {p0}, Lm63;->J()Lba3;

    move-result-object p0

    .line 19
    iget-object p0, p0, Lba3;->e:Lea3;

    aput-object p0, v3, v2

    const/4 p0, 0x2

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, p0

    const-string p0, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    .line 21
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static i(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lm63<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm63;

    .line 2
    invoke-interface {v0}, Lm63;->E()Lea3;

    move-result-object v1

    sget-object v2, Lea3;->n:Lea3;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    .line 3
    invoke-interface {v0}, Lm63;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le83;

    .line 5
    invoke-interface {v0}, Lf83;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 7
    instance-of v0, p0, Le83;

    if-eqz v0, :cond_2

    .line 8
    check-cast p0, Le83;

    invoke-interface {p0}, Lf83;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    .line 9
    :cond_2
    instance-of p0, p0, Lf73;

    if-eqz p0, :cond_3

    return v3

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v3
.end method

.method public static k(Lm63;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm63<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lm63;->J()Lba3;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lm63;->f()I

    move-result v1

    .line 3
    invoke-interface {p0}, Lm63;->n()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-interface {p0}, Lm63;->r()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 5
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Lk63;->d(Lba3;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v1}, Lb63;->G(I)I

    move-result p0

    add-int/2addr p0, v2

    .line 8
    invoke-static {v2}, Lb63;->I(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 9
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 10
    invoke-static {v0, v1, p1}, Lk63;->c(Lba3;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_2
    return v2

    .line 11
    :cond_3
    invoke-static {v0, v1, p1}, Lk63;->c(Lba3;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static m(Ljava/util/Map$Entry;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm63;

    .line 2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lm63;->E()Lea3;

    move-result-object v2

    sget-object v3, Lea3;->n:Lea3;

    if-ne v2, v3, :cond_1

    .line 4
    invoke-interface {v0}, Lm63;->n()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-interface {v0}, Lm63;->r()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    instance-of v0, v1, Lf73;

    const/16 v2, 0x18

    const/4 v3, 0x2

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm63;

    invoke-interface {p0}, Lm63;->f()I

    move-result p0

    check-cast v1, Lf73;

    .line 8
    invoke-static {v4}, Lb63;->I(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 9
    invoke-static {v3, p0}, Lb63;->k(II)I

    move-result p0

    add-int/2addr p0, v0

    .line 10
    invoke-static {v2}, Lb63;->I(I)I

    move-result v0

    .line 11
    invoke-virtual {v1}, Lj73;->b()I

    move-result v1

    .line 12
    invoke-static {v1}, Lb63;->I(I)I

    move-result v2

    :goto_0
    add-int/2addr v2, v1

    add-int/2addr v2, v0

    add-int/2addr v2, p0

    return v2

    .line 13
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lm63;

    invoke-interface {p0}, Lm63;->f()I

    move-result p0

    check-cast v1, Le83;

    .line 14
    invoke-static {v4}, Lb63;->I(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 15
    invoke-static {v3, p0}, Lb63;->k(II)I

    move-result p0

    add-int/2addr p0, v0

    .line 16
    invoke-static {v2}, Lb63;->I(I)I

    move-result v0

    .line 17
    invoke-interface {v1}, Le83;->g()I

    move-result v1

    .line 18
    invoke-static {v1}, Lb63;->I(I)I

    move-result v2

    goto :goto_0

    .line 19
    :cond_1
    invoke-static {v0, v1}, Lk63;->k(Lm63;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lk63;->a:Lb93;

    invoke-virtual {v2}, Lb93;->d()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lk63;->a:Lb93;

    invoke-virtual {v2, v1}, Lb93;->h(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lk63;->i(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p0, Lk63;->a:Lb93;

    invoke-virtual {v1}, Lb93;->e()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-static {v2}, Lk63;->i(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final b()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lk63;->c:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lk73;

    iget-object v1, p0, Lk63;->a:Lb93;

    invoke-virtual {v1}, Lb93;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lk73;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lk63;->a:Lb93;

    invoke-virtual {v0}, Lb93;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lk63;

    invoke-direct {v0}, Lk63;-><init>()V

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lk63;->a:Lb93;

    invoke-virtual {v2}, Lb93;->d()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lk63;->a:Lb93;

    invoke-virtual {v2, v1}, Lb93;->h(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm63;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lk63;->f(Lm63;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lk63;->a:Lb93;

    invoke-virtual {v1}, Lb93;->e()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lm63;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lk63;->f(Lm63;Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-boolean v1, p0, Lk63;->c:Z

    iput-boolean v1, v0, Lk63;->c:Z

    return-object v0
.end method

.method public final e(Lm63;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lk63;->a:Lb93;

    invoke-virtual {v0, p1}, Lb93;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lf73;

    if-nez v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    check-cast p1, Lf73;

    .line 4
    sget p1, Lf73;->c:I

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lk63;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lk63;

    .line 3
    iget-object v0, p0, Lk63;->a:Lb93;

    iget-object p1, p1, Lk63;->a:Lb93;

    invoke-virtual {v0, p1}, Lb93;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f(Lm63;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lm63;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    check-cast p2, Ljava/util/List;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 6
    invoke-static {p1, v2}, Lk63;->h(Lm63;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    invoke-static {p1, p2}, Lk63;->h(Lm63;Ljava/lang/Object;)V

    .line 9
    :goto_1
    instance-of v0, p2, Lf73;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lk63;->c:Z

    .line 11
    :cond_3
    iget-object v0, p0, Lk63;->a:Lb93;

    invoke-virtual {v0, p1, p2}, Lb93;->b(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk63;->a:Lb93;

    invoke-virtual {v0}, Lb93;->hashCode()I

    move-result v0

    return v0
.end method

.method public final j()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lk63;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lk63;->a:Lb93;

    invoke-virtual {v0}, Lb93;->c()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lk63;->b:Z

    return-void
.end method

.method public final l(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm63;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v1, p1, Lf73;

    if-nez v1, :cond_6

    .line 4
    invoke-interface {v0}, Lm63;->n()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {p0, v0}, Lk63;->e(Lm63;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lk63;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lk63;->a:Lb93;

    invoke-virtual {p1, v0, v1}, Lb93;->b(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 10
    :cond_2
    invoke-interface {v0}, Lm63;->E()Lea3;

    move-result-object v1

    sget-object v2, Lea3;->n:Lea3;

    if-ne v1, v2, :cond_5

    .line 11
    invoke-virtual {p0, v0}, Lk63;->e(Lm63;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 12
    iget-object v1, p0, Lk63;->a:Lb93;

    invoke-static {p1}, Lk63;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lb93;->b(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 13
    :cond_3
    instance-of v2, v1, Lh83;

    if-eqz v2, :cond_4

    .line 14
    check-cast v1, Lh83;

    check-cast p1, Lh83;

    .line 15
    invoke-interface {v0, v1, p1}, Lm63;->H(Lh83;Lh83;)Lh83;

    move-result-object p1

    goto :goto_1

    .line 16
    :cond_4
    check-cast v1, Le83;

    .line 17
    invoke-interface {v1}, Le83;->c()La53;

    move-result-object v1

    check-cast p1, Le83;

    invoke-interface {v0, v1, p1}, Lm63;->B(La53;Le83;)La53;

    move-result-object p1

    .line 18
    invoke-virtual {p1}, La53;->j()Le83;

    move-result-object p1

    .line 19
    :goto_1
    iget-object v1, p0, Lk63;->a:Lb93;

    invoke-virtual {v1, v0, p1}, Lb93;->b(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 20
    :cond_5
    iget-object v1, p0, Lk63;->a:Lb93;

    invoke-static {p1}, Lk63;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lb93;->b(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 21
    :cond_6
    check-cast p1, Lf73;

    .line 22
    sget p1, Lf73;->c:I

    new-instance p1, Ljava/lang/NoSuchMethodError;

    invoke-direct {p1}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p1
.end method
