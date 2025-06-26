.class public final Lt58;
.super Lj58;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final g:Lt58;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lt58;

    invoke-direct {v0}, Lt58;-><init>()V

    sput-object v0, Lt58;->g:Lt58;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lj58;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lt58;->g:Lt58;

    return-object v0
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 1

    const-string v0, "roc"

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    const-string v0, "Minguo"

    return-object v0
.end method

.method public I(Lu68;)Lf58;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu68;",
            ")",
            "Lf58<",
            "Lu58;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lj58;->I(Lu68;)Lf58;

    move-result-object p1

    return-object p1
.end method

.method public L(Lo48;Lz48;)Lh58;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo48;",
            "Lz48;",
            ")",
            "Lh58<",
            "Lu58;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Li58;->X(Lj58;Lo48;Lz48;)Li58;

    move-result-object p1

    return-object p1
.end method

.method public M(Lq68;)Ld78;
    .locals 11

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-wide/16 v1, 0x777

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    sget-object p1, Lq68;->I:Lq68;

    .line 3
    iget-object p1, p1, Lq68;->h:Ld78;

    .line 4
    iget-wide v3, p1, Ld78;->e:J

    sub-long/2addr v3, v1

    .line 5
    iget-wide v5, p1, Ld78;->h:J

    sub-long/2addr v5, v1

    .line 6
    invoke-static {v3, v4, v5, v6}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_1
    sget-object p1, Lq68;->I:Lq68;

    .line 8
    iget-object p1, p1, Lq68;->h:Ld78;

    const-wide/16 v3, 0x1

    .line 9
    iget-wide v5, p1, Ld78;->h:J

    sub-long/2addr v5, v1

    .line 10
    iget-wide v7, p1, Ld78;->e:J

    neg-long v7, v7

    const-wide/16 v9, 0x1

    add-long/2addr v7, v9

    add-long/2addr v7, v1

    .line 11
    invoke-static/range {v3 .. v8}, Ld78;->e(JJJ)Ld78;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_2
    sget-object p1, Lq68;->G:Lq68;

    .line 13
    iget-object p1, p1, Lq68;->h:Ld78;

    .line 14
    iget-wide v0, p1, Ld78;->e:J

    const-wide/16 v2, 0x5994

    sub-long/2addr v0, v2

    .line 15
    iget-wide v4, p1, Ld78;->h:J

    sub-long/2addr v4, v2

    .line 16
    invoke-static {v0, v1, v4, v5}, Ld78;->d(JJ)Ld78;

    move-result-object p1

    return-object p1

    .line 17
    :goto_0
    iget-object p1, p1, Lq68;->h:Ld78;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public k(Lu68;)Le58;
    .locals 1

    .line 1
    instance-of v0, p1, Lu58;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lu58;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lu58;

    invoke-static {p1}, Lp48;->V(Lu68;)Lp48;

    move-result-object p1

    invoke-direct {v0, p1}, Lu58;-><init>(Lp48;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public x(I)Lk58;
    .locals 0

    .line 1
    invoke-static {p1}, Lv58;->K(I)Lv58;

    move-result-object p1

    return-object p1
.end method
