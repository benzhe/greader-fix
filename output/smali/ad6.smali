.class public final Lad6;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lad6$b;,
        Lad6$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lad6;",
        "Lad6$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CAUSE_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lad6;

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lad6;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_TIME_FIELD_NUMBER:I = 0x6

.field public static final RESUME_TOKEN_FIELD_NUMBER:I = 0x4

.field public static final TARGET_CHANGE_TYPE_FIELD_NUMBER:I = 0x1

.field public static final TARGET_IDS_FIELD_NUMBER:I = 0x2


# instance fields
.field private cause_:Lil6;

.field private readTime_:Lwk6;

.field private resumeToken_:Lqi6;

.field private targetChangeType_:I

.field private targetIdsMemoizedSerializedSize:I

.field private targetIds_:Ljj6$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lad6;

    invoke-direct {v0}, Lad6;-><init>()V

    .line 2
    sput-object v0, Lad6;->DEFAULT_INSTANCE:Lad6;

    .line 3
    const-class v1, Lad6;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lad6;->targetIdsMemoizedSerializedSize:I

    .line 3
    sget-object v0, Lij6;->h:Lij6;

    .line 4
    iput-object v0, p0, Lad6;->targetIds_:Ljj6$c;

    .line 5
    sget-object v0, Lqi6;->f:Lqi6;

    iput-object v0, p0, Lad6;->resumeToken_:Lqi6;

    return-void
.end method

.method public static synthetic B()Lad6;
    .locals 1

    .line 1
    sget-object v0, Lad6;->DEFAULT_INSTANCE:Lad6;

    return-object v0
.end method

.method public static D()Lad6;
    .locals 1

    .line 1
    sget-object v0, Lad6;->DEFAULT_INSTANCE:Lad6;

    return-object v0
.end method


# virtual methods
.method public C()Lil6;
    .locals 1

    .line 1
    iget-object v0, p0, Lad6;->cause_:Lil6;

    if-nez v0, :cond_0

    invoke-static {}, Lil6;->D()Lil6;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public E()Lwk6;
    .locals 1

    .line 1
    iget-object v0, p0, Lad6;->readTime_:Lwk6;

    if-nez v0, :cond_0

    invoke-static {}, Lwk6;->E()Lwk6;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public F()Lqi6;
    .locals 1

    .line 1
    iget-object v0, p0, Lad6;->resumeToken_:Lqi6;

    return-object v0
.end method

.method public G()Lad6$c;
    .locals 1

    .line 1
    iget v0, p0, Lad6;->targetChangeType_:I

    invoke-static {v0}, Lad6$c;->i(I)Lad6$c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lad6$c;->k:Lad6$c;

    :cond_0
    return-object v0
.end method

.method public H()I
    .locals 1

    .line 1
    iget-object v0, p0, Lad6;->targetIds_:Ljj6$c;

    check-cast v0, Lij6;

    invoke-virtual {v0}, Lij6;->size()I

    move-result v0

    return v0
.end method

.method public I()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lad6;->targetIds_:Ljj6$c;

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
    sget-object p1, Lad6;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lad6;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lad6;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lad6;->DEFAULT_INSTANCE:Lad6;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lad6;->PARSER:Lik6;

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
    sget-object p1, Lad6;->DEFAULT_INSTANCE:Lad6;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lad6$b;

    invoke-direct {p1, p3}, Lad6$b;-><init>(Lad6$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lad6;

    invoke-direct {p1}, Lad6;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "targetChangeType_"

    aput-object v0, p1, p3

    const-string p3, "targetIds_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "cause_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "resumeToken_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "readTime_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0005\u0000\u0000\u0001\u0006\u0005\u0000\u0001\u0000\u0001\u000c\u0002\'\u0003\t\u0004\n\u0006\t"

    .line 12
    sget-object p3, Lad6;->DEFAULT_INSTANCE:Lad6;

    .line 13
    new-instance v0, Lnk6;

    invoke-direct {v0, p3, p2, p1}, Lnk6;-><init>(Lak6;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    return-object p3

    .line 14
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
