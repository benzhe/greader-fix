.class public final Lev5;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lev5$b;,
        Lev5$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lev5;",
        "Lev5$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lev5;

.field public static final DOCUMENTS_FIELD_NUMBER:I = 0x6

.field public static final LAST_LIMBO_FREE_SNAPSHOT_VERSION_FIELD_NUMBER:I = 0x7

.field public static final LAST_LISTEN_SEQUENCE_NUMBER_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lev5;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY_FIELD_NUMBER:I = 0x5

.field public static final RESUME_TOKEN_FIELD_NUMBER:I = 0x3

.field public static final SNAPSHOT_VERSION_FIELD_NUMBER:I = 0x2

.field public static final TARGET_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private lastLimboFreeSnapshotVersion_:Lwk6;

.field private lastListenSequenceNumber_:J

.field private resumeToken_:Lqi6;

.field private snapshotVersion_:Lwk6;

.field private targetId_:I

.field private targetTypeCase_:I

.field private targetType_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lev5;

    invoke-direct {v0}, Lev5;-><init>()V

    .line 2
    sput-object v0, Lev5;->DEFAULT_INSTANCE:Lev5;

    .line 3
    const-class v1, Lev5;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lev5;->targetTypeCase_:I

    .line 3
    sget-object v0, Lqi6;->f:Lqi6;

    iput-object v0, p0, Lev5;->resumeToken_:Lqi6;

    return-void
.end method

.method public static synthetic B()Lev5;
    .locals 1

    .line 1
    sget-object v0, Lev5;->DEFAULT_INSTANCE:Lev5;

    return-object v0
.end method

.method public static C(Lev5;Lzc6$d;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lev5;->targetType_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 4
    iput p1, p0, Lev5;->targetTypeCase_:I

    return-void
.end method

.method public static D(Lev5;Lzc6$c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lev5;->targetType_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 4
    iput p1, p0, Lev5;->targetTypeCase_:I

    return-void
.end method

.method public static E(Lev5;Lwk6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lev5;->lastLimboFreeSnapshotVersion_:Lwk6;

    return-void
.end method

.method public static F(Lev5;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lev5;->lastLimboFreeSnapshotVersion_:Lwk6;

    return-void
.end method

.method public static G(Lev5;I)V
    .locals 0

    .line 1
    iput p1, p0, Lev5;->targetId_:I

    return-void
.end method

.method public static H(Lev5;Lwk6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lev5;->snapshotVersion_:Lwk6;

    return-void
.end method

.method public static I(Lev5;Lqi6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lev5;->resumeToken_:Lqi6;

    return-void
.end method

.method public static J(Lev5;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lev5;->lastListenSequenceNumber_:J

    return-void
.end method

.method public static S()Lev5$b;
    .locals 1

    .line 1
    sget-object v0, Lev5;->DEFAULT_INSTANCE:Lev5;

    invoke-virtual {v0}, Lgj6;->q()Lgj6$a;

    move-result-object v0

    check-cast v0, Lev5$b;

    return-object v0
.end method

.method public static T([B)Lev5;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkj6;
        }
    .end annotation

    .line 1
    sget-object v0, Lev5;->DEFAULT_INSTANCE:Lev5;

    invoke-static {v0, p0}, Lgj6;->x(Lgj6;[B)Lgj6;

    move-result-object p0

    check-cast p0, Lev5;

    return-object p0
.end method


# virtual methods
.method public K()Lzc6$c;
    .locals 2

    .line 1
    iget v0, p0, Lev5;->targetTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lev5;->targetType_:Ljava/lang/Object;

    check-cast v0, Lzc6$c;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lzc6$c;->D()Lzc6$c;

    move-result-object v0

    return-object v0
.end method

.method public L()Lwk6;
    .locals 1

    .line 1
    iget-object v0, p0, Lev5;->lastLimboFreeSnapshotVersion_:Lwk6;

    if-nez v0, :cond_0

    invoke-static {}, Lwk6;->E()Lwk6;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public M()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lev5;->lastListenSequenceNumber_:J

    return-wide v0
.end method

.method public N()Lzc6$d;
    .locals 2

    .line 1
    iget v0, p0, Lev5;->targetTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lev5;->targetType_:Ljava/lang/Object;

    check-cast v0, Lzc6$d;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lzc6$d;->E()Lzc6$d;

    move-result-object v0

    return-object v0
.end method

.method public O()Lqi6;
    .locals 1

    .line 1
    iget-object v0, p0, Lev5;->resumeToken_:Lqi6;

    return-object v0
.end method

.method public P()Lwk6;
    .locals 1

    .line 1
    iget-object v0, p0, Lev5;->snapshotVersion_:Lwk6;

    if-nez v0, :cond_0

    invoke-static {}, Lwk6;->E()Lwk6;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public Q()I
    .locals 1

    .line 1
    iget v0, p0, Lev5;->targetId_:I

    return v0
.end method

.method public R()Lev5$c;
    .locals 2

    .line 1
    iget v0, p0, Lev5;->targetTypeCase_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lev5$c;->f:Lev5$c;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lev5$c;->e:Lev5$c;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lev5$c;->g:Lev5$c;

    :goto_0
    return-object v0
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
    sget-object p1, Lev5;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lev5;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lev5;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lev5;->DEFAULT_INSTANCE:Lev5;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lev5;->PARSER:Lik6;

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
    sget-object p1, Lev5;->DEFAULT_INSTANCE:Lev5;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lev5$b;

    invoke-direct {p1, p3}, Lev5$b;-><init>(Lev5$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lev5;

    invoke-direct {p1}, Lev5;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "targetType_"

    aput-object v0, p1, p3

    const-string p3, "targetTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "targetId_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "snapshotVersion_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "resumeToken_"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "lastListenSequenceNumber_"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 12
    const-class p3, Lzc6$d;

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-class p3, Lzc6$c;

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-string p3, "lastLimboFreeSnapshotVersion_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0007\u0001\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0004\u0002\t\u0003\n\u0004\u0002\u0005<\u0000\u0006<\u0000\u0007\t"

    .line 13
    sget-object p3, Lev5;->DEFAULT_INSTANCE:Lev5;

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
