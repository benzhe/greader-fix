.class public final Lzc6;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzc6$b;,
        Lzc6$d;,
        Lzc6$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lzc6;",
        "Lzc6$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lzc6;

.field public static final DOCUMENTS_FIELD_NUMBER:I = 0x3

.field public static final ONCE_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lzc6;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUERY_FIELD_NUMBER:I = 0x2

.field public static final READ_TIME_FIELD_NUMBER:I = 0xb

.field public static final RESUME_TOKEN_FIELD_NUMBER:I = 0x4

.field public static final TARGET_ID_FIELD_NUMBER:I = 0x5


# instance fields
.field private once_:Z

.field private resumeTypeCase_:I

.field private resumeType_:Ljava/lang/Object;

.field private targetId_:I

.field private targetTypeCase_:I

.field private targetType_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lzc6;

    invoke-direct {v0}, Lzc6;-><init>()V

    .line 2
    sput-object v0, Lzc6;->DEFAULT_INSTANCE:Lzc6;

    .line 3
    const-class v1, Lzc6;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lzc6;->targetTypeCase_:I

    .line 3
    iput v0, p0, Lzc6;->resumeTypeCase_:I

    return-void
.end method

.method public static synthetic B()Lzc6;
    .locals 1

    .line 1
    sget-object v0, Lzc6;->DEFAULT_INSTANCE:Lzc6;

    return-object v0
.end method

.method public static C(Lzc6;Lzc6$d;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lzc6;->targetType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lzc6;->targetTypeCase_:I

    return-void
.end method

.method public static D(Lzc6;Lzc6$c;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lzc6;->targetType_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 4
    iput p1, p0, Lzc6;->targetTypeCase_:I

    return-void
.end method

.method public static E(Lzc6;Lqi6;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lzc6;->resumeTypeCase_:I

    .line 4
    iput-object p1, p0, Lzc6;->resumeType_:Ljava/lang/Object;

    return-void
.end method

.method public static F(Lzc6;I)V
    .locals 0

    .line 1
    iput p1, p0, Lzc6;->targetId_:I

    return-void
.end method

.method public static G()Lzc6$b;
    .locals 1

    .line 1
    sget-object v0, Lzc6;->DEFAULT_INSTANCE:Lzc6;

    invoke-virtual {v0}, Lgj6;->q()Lgj6$a;

    move-result-object v0

    check-cast v0, Lzc6$b;

    return-object v0
.end method


# virtual methods
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
    sget-object p1, Lzc6;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lzc6;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lzc6;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lzc6;->DEFAULT_INSTANCE:Lzc6;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lzc6;->PARSER:Lik6;

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
    sget-object p1, Lzc6;->DEFAULT_INSTANCE:Lzc6;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lzc6$b;

    invoke-direct {p1, p3}, Lzc6$b;-><init>(Lzc6$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lzc6;

    invoke-direct {p1}, Lzc6;-><init>()V

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

    const-string p3, "resumeType_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "resumeTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 12
    const-class p3, Lzc6$d;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lzc6$c;

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "targetId_"

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "once_"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    const-class p3, Lwk6;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0006\u0002\u0000\u0002\u000b\u0006\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000\u0004=\u0001\u0005\u0004\u0006\u0007\u000b<\u0001"

    .line 13
    sget-object p3, Lzc6;->DEFAULT_INSTANCE:Lzc6;

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
