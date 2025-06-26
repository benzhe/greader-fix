.class public final Lyc6;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyc6$b;,
        Lyc6$j;,
        Lyc6$g;,
        Lyc6$i;,
        Lyc6$k;,
        Lyc6$f;,
        Lyc6$d;,
        Lyc6$h;,
        Lyc6$c;,
        Lyc6$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lyc6;",
        "Lyc6$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lyc6;

.field public static final END_AT_FIELD_NUMBER:I = 0x8

.field public static final FROM_FIELD_NUMBER:I = 0x2

.field public static final LIMIT_FIELD_NUMBER:I = 0x5

.field public static final OFFSET_FIELD_NUMBER:I = 0x6

.field public static final ORDER_BY_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lyc6;",
            ">;"
        }
    .end annotation
.end field

.field public static final SELECT_FIELD_NUMBER:I = 0x1

.field public static final START_AT_FIELD_NUMBER:I = 0x7

.field public static final WHERE_FIELD_NUMBER:I = 0x3


# instance fields
.field private endAt_:Llc6;

.field private from_:Ljj6$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj6$d<",
            "Lyc6$c;",
            ">;"
        }
    .end annotation
.end field

.field private limit_:Lhj6;

.field private offset_:I

.field private orderBy_:Ljj6$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljj6$d<",
            "Lyc6$i;",
            ">;"
        }
    .end annotation
.end field

.field private select_:Lyc6$j;

.field private startAt_:Llc6;

.field private where_:Lyc6$h;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyc6;

    invoke-direct {v0}, Lyc6;-><init>()V

    .line 2
    sput-object v0, Lyc6;->DEFAULT_INSTANCE:Lyc6;

    .line 3
    const-class v1, Lyc6;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    .line 2
    sget-object v0, Lmk6;->h:Lmk6;

    .line 3
    iput-object v0, p0, Lyc6;->from_:Ljj6$d;

    .line 4
    iput-object v0, p0, Lyc6;->orderBy_:Ljj6$d;

    return-void
.end method

.method public static synthetic B()Lyc6;
    .locals 1

    .line 1
    sget-object v0, Lyc6;->DEFAULT_INSTANCE:Lyc6;

    return-object v0
.end method

.method public static C(Lyc6;Lyc6$c;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lyc6;->from_:Ljj6$d;

    .line 3
    invoke-interface {v0}, Ljj6$d;->F0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {v0}, Lgj6;->v(Ljj6$d;)Ljj6$d;

    move-result-object v0

    iput-object v0, p0, Lyc6;->from_:Ljj6$d;

    .line 5
    :cond_0
    iget-object p0, p0, Lyc6;->from_:Ljj6$d;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static D(Lyc6;Lyc6$h;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lyc6;->where_:Lyc6$h;

    return-void
.end method

.method public static E(Lyc6;Lyc6$i;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget-object v0, p0, Lyc6;->orderBy_:Ljj6$d;

    .line 4
    invoke-interface {v0}, Ljj6$d;->F0()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-static {v0}, Lgj6;->v(Ljj6$d;)Ljj6$d;

    move-result-object v0

    iput-object v0, p0, Lyc6;->orderBy_:Ljj6$d;

    .line 6
    :cond_0
    iget-object p0, p0, Lyc6;->orderBy_:Ljj6$d;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static F(Lyc6;Llc6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lyc6;->startAt_:Llc6;

    return-void
.end method

.method public static G(Lyc6;Llc6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lyc6;->endAt_:Llc6;

    return-void
.end method

.method public static H(Lyc6;Lhj6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lyc6;->limit_:Lhj6;

    return-void
.end method

.method public static I()Lyc6;
    .locals 1

    .line 1
    sget-object v0, Lyc6;->DEFAULT_INSTANCE:Lyc6;

    return-object v0
.end method

.method public static V()Lyc6$b;
    .locals 1

    .line 1
    sget-object v0, Lyc6;->DEFAULT_INSTANCE:Lyc6;

    invoke-virtual {v0}, Lgj6;->q()Lgj6$a;

    move-result-object v0

    check-cast v0, Lyc6$b;

    return-object v0
.end method


# virtual methods
.method public J()Llc6;
    .locals 1

    .line 1
    iget-object v0, p0, Lyc6;->endAt_:Llc6;

    if-nez v0, :cond_0

    invoke-static {}, Llc6;->F()Llc6;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public K(I)Lyc6$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lyc6;->from_:Ljj6$d;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyc6$c;

    return-object p1
.end method

.method public L()I
    .locals 1

    .line 1
    iget-object v0, p0, Lyc6;->from_:Ljj6$d;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public M()Lhj6;
    .locals 1

    .line 1
    iget-object v0, p0, Lyc6;->limit_:Lhj6;

    if-nez v0, :cond_0

    invoke-static {}, Lhj6;->D()Lhj6;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public N(I)Lyc6$i;
    .locals 1

    .line 1
    iget-object v0, p0, Lyc6;->orderBy_:Ljj6$d;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lyc6$i;

    return-object p1
.end method

.method public O()I
    .locals 1

    .line 1
    iget-object v0, p0, Lyc6;->orderBy_:Ljj6$d;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public P()Llc6;
    .locals 1

    .line 1
    iget-object v0, p0, Lyc6;->startAt_:Llc6;

    if-nez v0, :cond_0

    invoke-static {}, Llc6;->F()Llc6;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public Q()Lyc6$h;
    .locals 1

    .line 1
    iget-object v0, p0, Lyc6;->where_:Lyc6$h;

    if-nez v0, :cond_0

    invoke-static {}, Lyc6$h;->G()Lyc6$h;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lyc6;->endAt_:Llc6;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lyc6;->limit_:Lhj6;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public T()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lyc6;->startAt_:Llc6;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public U()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lyc6;->where_:Lyc6$h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final r(Lgj6$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Lyc6;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lyc6;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lyc6;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lyc6;->DEFAULT_INSTANCE:Lyc6;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lyc6;->PARSER:Lik6;

    .line 8
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 9
    :pswitch_1
    sget-object p1, Lyc6;->DEFAULT_INSTANCE:Lyc6;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lyc6$b;

    invoke-direct {p1, p3}, Lyc6$b;-><init>(Lyc6$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lyc6;

    invoke-direct {p1}, Lyc6;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "select_"

    aput-object v0, p1, p3

    const-string p3, "from_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 12
    const-class p3, Lyc6$c;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "where_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "orderBy_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lyc6$i;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "limit_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "offset_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "startAt_"

    aput-object p3, p1, p2

    const/16 p2, 0x9

    const-string p3, "endAt_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0008\u0000\u0000\u0001\u0008\u0008\u0000\u0002\u0000\u0001\t\u0002\u001b\u0003\t\u0004\u001b\u0005\t\u0006\u0004\u0007\t\u0008\t"

    .line 13
    sget-object p3, Lyc6;->DEFAULT_INSTANCE:Lyc6;

    .line 14
    new-instance v0, Lnk6;

    invoke-direct {v0, p3, p2, p1}, Lnk6;-><init>(Lak6;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    return-object p3

    .line 15
    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
