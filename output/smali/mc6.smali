.class public final Lmc6;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmc6$b;,
        Lmc6$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lmc6;",
        "Lmc6$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final CREATE_TIME_FIELD_NUMBER:I = 0x3

.field private static final DEFAULT_INSTANCE:Lmc6;

.field public static final FIELDS_FIELD_NUMBER:I = 0x2

.field public static final NAME_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lmc6;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATE_TIME_FIELD_NUMBER:I = 0x4


# instance fields
.field private createTime_:Lwk6;

.field private fields_:Luj6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luj6<",
            "Ljava/lang/String;",
            "Lbd6;",
            ">;"
        }
    .end annotation
.end field

.field private name_:Ljava/lang/String;

.field private updateTime_:Lwk6;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lmc6;

    invoke-direct {v0}, Lmc6;-><init>()V

    .line 2
    sput-object v0, Lmc6;->DEFAULT_INSTANCE:Lmc6;

    .line 3
    const-class v1, Lmc6;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    .line 2
    sget-object v0, Luj6;->f:Luj6;

    .line 3
    iput-object v0, p0, Lmc6;->fields_:Luj6;

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lmc6;->name_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic B()Lmc6;
    .locals 1

    .line 1
    sget-object v0, Lmc6;->DEFAULT_INSTANCE:Lmc6;

    return-object v0
.end method

.method public static C(Lmc6;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lmc6;->name_:Ljava/lang/String;

    return-void
.end method

.method public static D(Lmc6;)Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lmc6;->fields_:Luj6;

    .line 2
    iget-boolean v1, v0, Luj6;->e:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Luj6;->d()Luj6;

    move-result-object v0

    iput-object v0, p0, Lmc6;->fields_:Luj6;

    .line 4
    :cond_0
    iget-object p0, p0, Lmc6;->fields_:Luj6;

    return-object p0
.end method

.method public static E(Lmc6;Lwk6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lmc6;->updateTime_:Lwk6;

    return-void
.end method

.method public static F()Lmc6;
    .locals 1

    .line 1
    sget-object v0, Lmc6;->DEFAULT_INSTANCE:Lmc6;

    return-object v0
.end method

.method public static J()Lmc6$b;
    .locals 1

    .line 1
    sget-object v0, Lmc6;->DEFAULT_INSTANCE:Lmc6;

    invoke-virtual {v0}, Lgj6;->q()Lgj6$a;

    move-result-object v0

    check-cast v0, Lmc6$b;

    return-object v0
.end method


# virtual methods
.method public G()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lbd6;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lmc6;->fields_:Luj6;

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public H()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lmc6;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public I()Lwk6;
    .locals 1

    .line 1
    iget-object v0, p0, Lmc6;->updateTime_:Lwk6;

    if-nez v0, :cond_0

    invoke-static {}, Lwk6;->E()Lwk6;

    move-result-object v0

    :cond_0
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
    sget-object p1, Lmc6;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lmc6;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lmc6;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lmc6;->DEFAULT_INSTANCE:Lmc6;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lmc6;->PARSER:Lik6;

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
    sget-object p1, Lmc6;->DEFAULT_INSTANCE:Lmc6;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lmc6$b;

    invoke-direct {p1, p3}, Lmc6$b;-><init>(Lmc6$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lmc6;

    invoke-direct {p1}, Lmc6;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "name_"

    aput-object v0, p1, p3

    const-string p3, "fields_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 12
    sget-object p3, Lmc6$c;->a:Ltj6;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "createTime_"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "updateTime_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0001\u0000\u0000\u0001\u0208\u00022\u0003\t\u0004\t"

    .line 13
    sget-object p3, Lmc6;->DEFAULT_INSTANCE:Lmc6;

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
