.class public final Lx58;
.super Lj58;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final g:Lx58;

.field public static final h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lx58;

    invoke-direct {v0}, Lx58;-><init>()V

    sput-object v0, Lx58;->g:Lx58;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lx58;->h:Ljava/util/HashMap;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lx58;->i:Ljava/util/HashMap;

    .line 4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lx58;->j:Ljava/util/HashMap;

    const-string v3, "BB"

    const-string v4, "BE"

    .line 5
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "en"

    invoke-virtual {v0, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "th"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "B.B."

    const-string v3, "B.E."

    .line 7
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0e1e.\u0e28."

    const-string v3, "\u0e1b\u0e35\u0e01\u0e48\u0e2d\u0e19\u0e04\u0e23\u0e34\u0e2a\u0e15\u0e4c\u0e01\u0e32\u0e25\u0e17\u0e35\u0e48"

    .line 8
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Before Buddhist"

    const-string v1, "Budhhist Era"

    .line 9
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u0e1e\u0e38\u0e17\u0e18\u0e28\u0e31\u0e01\u0e23\u0e32\u0e0a"

    .line 10
    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    sget-object v0, Lx58;->g:Lx58;

    return-object v0
.end method


# virtual methods
.method public C()Ljava/lang/String;
    .locals 1

    const-string v0, "buddhist"

    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    const-string v0, "ThaiBuddhist"

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
            "Ly58;",
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
            "Ly58;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Li58;->X(Lj58;Lo48;Lz48;)Li58;

    move-result-object p1

    return-object p1
.end method

.method public M(Lq68;)Ld78;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-wide/16 v1, 0x21f

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    sget-object p1, Lq68;->I:Lq68;

    .line 3
    iget-object p1, p1, Lq68;->h:Ld78;

    .line 4
    iget-wide v3, p1, Ld78;->e:J

    add-long/2addr v3, v1

    .line 5
    iget-wide v5, p1, Ld78;->h:J

    add-long/2addr v5, v1

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
    iget-wide v5, p1, Ld78;->e:J

    add-long/2addr v5, v1

    neg-long v5, v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    .line 10
    iget-wide v7, p1, Ld78;->h:J

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

    const-wide/16 v2, 0x1974

    add-long/2addr v0, v2

    .line 15
    iget-wide v4, p1, Ld78;->h:J

    add-long/2addr v4, v2

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
    instance-of v0, p1, Ly58;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ly58;

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ly58;

    invoke-static {p1}, Lp48;->V(Lu68;)Lp48;

    move-result-object p1

    invoke-direct {v0, p1}, Ly58;-><init>(Lp48;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public x(I)Lk58;
    .locals 0

    .line 1
    invoke-static {p1}, Lz58;->K(I)Lz58;

    move-result-object p1

    return-object p1
.end method
