.class public final Lrc6$c;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrc6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrc6$c$a;,
        Lrc6$c$c;,
        Lrc6$c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lrc6$c;",
        "Lrc6$c$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final APPEND_MISSING_ELEMENTS_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Lrc6$c;

.field public static final FIELD_PATH_FIELD_NUMBER:I = 0x1

.field public static final INCREMENT_FIELD_NUMBER:I = 0x3

.field public static final MAXIMUM_FIELD_NUMBER:I = 0x4

.field public static final MINIMUM_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lrc6$c;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMOVE_ALL_FROM_ARRAY_FIELD_NUMBER:I = 0x7

.field public static final SET_TO_SERVER_VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private fieldPath_:Ljava/lang/String;

.field private transformTypeCase_:I

.field private transformType_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lrc6$c;

    invoke-direct {v0}, Lrc6$c;-><init>()V

    .line 2
    sput-object v0, Lrc6$c;->DEFAULT_INSTANCE:Lrc6$c;

    .line 3
    const-class v1, Lrc6$c;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lrc6$c;->transformTypeCase_:I

    const-string v0, ""

    .line 3
    iput-object v0, p0, Lrc6$c;->fieldPath_:Ljava/lang/String;

    return-void
.end method

.method public static synthetic B()Lrc6$c;
    .locals 1

    .line 1
    sget-object v0, Lrc6$c;->DEFAULT_INSTANCE:Lrc6$c;

    return-object v0
.end method

.method public static C(Lrc6$c;Ljc6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lrc6$c;->transformType_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 3
    iput p1, p0, Lrc6$c;->transformTypeCase_:I

    return-void
.end method

.method public static D(Lrc6$c;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lrc6$c;->fieldPath_:Ljava/lang/String;

    return-void
.end method

.method public static E(Lrc6$c;Ljc6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lrc6$c;->transformType_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 3
    iput p1, p0, Lrc6$c;->transformTypeCase_:I

    return-void
.end method

.method public static F(Lrc6$c;Lrc6$c$b;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lrc6$c$b;->g()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lrc6$c;->transformType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 3
    iput p1, p0, Lrc6$c;->transformTypeCase_:I

    return-void
.end method

.method public static G(Lrc6$c;Lbd6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lrc6$c;->transformType_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 4
    iput p1, p0, Lrc6$c;->transformTypeCase_:I

    return-void
.end method

.method public static N()Lrc6$c$a;
    .locals 1

    .line 1
    sget-object v0, Lrc6$c;->DEFAULT_INSTANCE:Lrc6$c;

    invoke-virtual {v0}, Lgj6;->q()Lgj6$a;

    move-result-object v0

    check-cast v0, Lrc6$c$a;

    return-object v0
.end method


# virtual methods
.method public H()Ljc6;
    .locals 2

    .line 1
    iget v0, p0, Lrc6$c;->transformTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lrc6$c;->transformType_:Ljava/lang/Object;

    check-cast v0, Ljc6;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Ljc6;->G()Ljc6;

    move-result-object v0

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lrc6$c;->fieldPath_:Ljava/lang/String;

    return-object v0
.end method

.method public J()Lbd6;
    .locals 2

    .line 1
    iget v0, p0, Lrc6$c;->transformTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lrc6$c;->transformType_:Ljava/lang/Object;

    check-cast v0, Lbd6;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lbd6;->Q()Lbd6;

    move-result-object v0

    return-object v0
.end method

.method public K()Ljc6;
    .locals 2

    .line 1
    iget v0, p0, Lrc6$c;->transformTypeCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lrc6$c;->transformType_:Ljava/lang/Object;

    check-cast v0, Ljc6;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Ljc6;->G()Ljc6;

    move-result-object v0

    return-object v0
.end method

.method public L()Lrc6$c$b;
    .locals 3

    .line 1
    sget-object v0, Lrc6$c$b;->f:Lrc6$c$b;

    iget v1, p0, Lrc6$c;->transformTypeCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 2
    iget-object v1, p0, Lrc6$c;->transformType_:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lrc6$c$b;->g:Lrc6$c$b;

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 4
    sget-object v0, Lrc6$c$b;->h:Lrc6$c$b;

    :cond_2
    return-object v0
.end method

.method public M()Lrc6$c$c;
    .locals 1

    .line 1
    iget v0, p0, Lrc6$c;->transformTypeCase_:I

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :pswitch_0
    sget-object v0, Lrc6$c$c;->j:Lrc6$c$c;

    goto :goto_0

    .line 3
    :pswitch_1
    sget-object v0, Lrc6$c$c;->i:Lrc6$c$c;

    goto :goto_0

    .line 4
    :pswitch_2
    sget-object v0, Lrc6$c$c;->h:Lrc6$c$c;

    goto :goto_0

    .line 5
    :pswitch_3
    sget-object v0, Lrc6$c$c;->g:Lrc6$c$c;

    goto :goto_0

    .line 6
    :pswitch_4
    sget-object v0, Lrc6$c$c;->f:Lrc6$c$c;

    goto :goto_0

    .line 7
    :pswitch_5
    sget-object v0, Lrc6$c$c;->e:Lrc6$c$c;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v0, Lrc6$c$c;->k:Lrc6$c$c;

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Lgj6$f;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-class p2, Ljc6;

    const-class p3, Lbd6;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    sget-object p1, Lrc6$c;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lrc6$c;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lrc6$c;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lrc6$c;->DEFAULT_INSTANCE:Lrc6$c;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lrc6$c;->PARSER:Lik6;

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
    sget-object p1, Lrc6$c;->DEFAULT_INSTANCE:Lrc6$c;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lrc6$c$a;

    invoke-direct {p1, v1}, Lrc6$c$a;-><init>(Lrc6$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lrc6$c;

    invoke-direct {p1}, Lrc6$c;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0x8

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "transformType_"

    aput-object v2, p1, v1

    const-string v1, "transformTypeCase_"

    aput-object v1, p1, v0

    const/4 v0, 0x2

    const-string v1, "fieldPath_"

    aput-object v1, p1, v0

    const/4 v0, 0x3

    aput-object p3, p1, v0

    const/4 v0, 0x4

    aput-object p3, p1, v0

    const/4 v0, 0x5

    aput-object p3, p1, v0

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string p2, "\u0000\u0007\u0001\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0208\u0002?\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000"

    .line 12
    sget-object p3, Lrc6$c;->DEFAULT_INSTANCE:Lrc6$c;

    .line 13
    new-instance v0, Lnk6;

    invoke-direct {v0, p3, p2, p1}, Lnk6;-><init>(Lak6;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :pswitch_5
    return-object v1

    .line 14
    :pswitch_6
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

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
