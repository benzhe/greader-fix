.class public final Lbd6;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbd6$b;,
        Lbd6$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lbd6;",
        "Lbd6$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ARRAY_VALUE_FIELD_NUMBER:I = 0x9

.field public static final BOOLEAN_VALUE_FIELD_NUMBER:I = 0x1

.field public static final BYTES_VALUE_FIELD_NUMBER:I = 0x12

.field private static final DEFAULT_INSTANCE:Lbd6;

.field public static final DOUBLE_VALUE_FIELD_NUMBER:I = 0x3

.field public static final GEO_POINT_VALUE_FIELD_NUMBER:I = 0x8

.field public static final INTEGER_VALUE_FIELD_NUMBER:I = 0x2

.field public static final MAP_VALUE_FIELD_NUMBER:I = 0x6

.field public static final NULL_VALUE_FIELD_NUMBER:I = 0xb

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lbd6;",
            ">;"
        }
    .end annotation
.end field

.field public static final REFERENCE_VALUE_FIELD_NUMBER:I = 0x5

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x11

.field public static final TIMESTAMP_VALUE_FIELD_NUMBER:I = 0xa


# instance fields
.field private valueTypeCase_:I

.field private valueType_:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lbd6;

    invoke-direct {v0}, Lbd6;-><init>()V

    .line 2
    sput-object v0, Lbd6;->DEFAULT_INSTANCE:Lbd6;

    .line 3
    const-class v1, Lbd6;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lbd6;->valueTypeCase_:I

    return-void
.end method

.method public static synthetic B()Lbd6;
    .locals 1

    .line 1
    sget-object v0, Lbd6;->DEFAULT_INSTANCE:Lbd6;

    return-object v0
.end method

.method public static C(Lbd6;Lwk6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lbd6;->valueType_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 3
    iput p1, p0, Lbd6;->valueTypeCase_:I

    return-void
.end method

.method public static D(Lbd6;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x11

    .line 3
    iput v0, p0, Lbd6;->valueTypeCase_:I

    .line 4
    iput-object p1, p0, Lbd6;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method public static E(Lbd6;Lqi6;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, 0x12

    .line 3
    iput v0, p0, Lbd6;->valueTypeCase_:I

    .line 4
    iput-object p1, p0, Lbd6;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method public static F(Lbd6;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x5

    .line 3
    iput v0, p0, Lbd6;->valueTypeCase_:I

    .line 4
    iput-object p1, p0, Lbd6;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method public static G(Lbd6;Ljl6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lbd6;->valueType_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 3
    iput p1, p0, Lbd6;->valueTypeCase_:I

    return-void
.end method

.method public static H(Lbd6;Ljc6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lbd6;->valueType_:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 3
    iput p1, p0, Lbd6;->valueTypeCase_:I

    return-void
.end method

.method public static I(Lbd6;Lwc6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lbd6;->valueType_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 4
    iput p1, p0, Lbd6;->valueTypeCase_:I

    return-void
.end method

.method public static J(Lbd6;Lhk6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lhk6;->g()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lbd6;->valueType_:Ljava/lang/Object;

    const/16 p1, 0xb

    .line 3
    iput p1, p0, Lbd6;->valueTypeCase_:I

    return-void
.end method

.method public static K(Lbd6;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput v0, p0, Lbd6;->valueTypeCase_:I

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lbd6;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method public static L(Lbd6;J)V
    .locals 1

    const/4 v0, 0x2

    .line 1
    iput v0, p0, Lbd6;->valueTypeCase_:I

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lbd6;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method public static M(Lbd6;D)V
    .locals 1

    const/4 v0, 0x3

    .line 1
    iput v0, p0, Lbd6;->valueTypeCase_:I

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lbd6;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method public static Q()Lbd6;
    .locals 1

    .line 1
    sget-object v0, Lbd6;->DEFAULT_INSTANCE:Lbd6;

    return-object v0
.end method

.method public static Z()Lbd6$b;
    .locals 1

    .line 1
    sget-object v0, Lbd6;->DEFAULT_INSTANCE:Lbd6;

    invoke-virtual {v0}, Lgj6;->q()Lgj6$a;

    move-result-object v0

    check-cast v0, Lbd6$b;

    return-object v0
.end method


# virtual methods
.method public N()Ljc6;
    .locals 2

    .line 1
    iget v0, p0, Lbd6;->valueTypeCase_:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lbd6;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljc6;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Ljc6;->G()Ljc6;

    move-result-object v0

    return-object v0
.end method

.method public O()Z
    .locals 2

    .line 1
    iget v0, p0, Lbd6;->valueTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lbd6;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public P()Lqi6;
    .locals 2

    .line 1
    iget v0, p0, Lbd6;->valueTypeCase_:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lbd6;->valueType_:Ljava/lang/Object;

    check-cast v0, Lqi6;

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lqi6;->f:Lqi6;

    return-object v0
.end method

.method public R()D
    .locals 2

    .line 1
    iget v0, p0, Lbd6;->valueTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lbd6;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public S()Ljl6;
    .locals 2

    .line 1
    iget v0, p0, Lbd6;->valueTypeCase_:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lbd6;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljl6;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Ljl6;->E()Ljl6;

    move-result-object v0

    return-object v0
.end method

.method public T()J
    .locals 2

    .line 1
    iget v0, p0, Lbd6;->valueTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lbd6;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public U()Lwc6;
    .locals 2

    .line 1
    iget v0, p0, Lbd6;->valueTypeCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lbd6;->valueType_:Ljava/lang/Object;

    check-cast v0, Lwc6;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lwc6;->D()Lwc6;

    move-result-object v0

    return-object v0
.end method

.method public V()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lbd6;->valueTypeCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lbd6;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public W()Ljava/lang/String;
    .locals 2

    .line 1
    iget v0, p0, Lbd6;->valueTypeCase_:I

    const/16 v1, 0x11

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lbd6;->valueType_:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public X()Lwk6;
    .locals 2

    .line 1
    iget v0, p0, Lbd6;->valueTypeCase_:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lbd6;->valueType_:Ljava/lang/Object;

    check-cast v0, Lwk6;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lwk6;->E()Lwk6;

    move-result-object v0

    return-object v0
.end method

.method public Y()Lbd6$c;
    .locals 2

    .line 1
    iget v0, p0, Lbd6;->valueTypeCase_:I

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :pswitch_0
    sget-object v0, Lbd6$c;->e:Lbd6$c;

    goto :goto_0

    .line 3
    :pswitch_1
    sget-object v0, Lbd6$c;->i:Lbd6$c;

    goto :goto_0

    .line 4
    :pswitch_2
    sget-object v0, Lbd6$c;->n:Lbd6$c;

    goto :goto_0

    .line 5
    :pswitch_3
    sget-object v0, Lbd6$c;->m:Lbd6$c;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lbd6$c;->k:Lbd6$c;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lbd6$c;->j:Lbd6$c;

    goto :goto_0

    .line 8
    :cond_2
    sget-object v0, Lbd6$c;->o:Lbd6$c;

    goto :goto_0

    .line 9
    :cond_3
    sget-object v0, Lbd6$c;->l:Lbd6$c;

    goto :goto_0

    .line 10
    :cond_4
    sget-object v0, Lbd6$c;->h:Lbd6$c;

    goto :goto_0

    .line 11
    :cond_5
    sget-object v0, Lbd6$c;->g:Lbd6$c;

    goto :goto_0

    .line 12
    :cond_6
    sget-object v0, Lbd6$c;->f:Lbd6$c;

    goto :goto_0

    .line 13
    :cond_7
    sget-object v0, Lbd6$c;->p:Lbd6$c;

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    sget-object p1, Lbd6;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lbd6;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lbd6;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lbd6;->DEFAULT_INSTANCE:Lbd6;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lbd6;->PARSER:Lik6;

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
    sget-object p1, Lbd6;->DEFAULT_INSTANCE:Lbd6;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lbd6$b;

    invoke-direct {p1, p3}, Lbd6$b;-><init>(Lbd6$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lbd6;

    invoke-direct {p1}, Lbd6;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "valueType_"

    aput-object v0, p1, p3

    const-string p3, "valueTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 12
    const-class p3, Lwc6;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Ljl6;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Ljc6;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lwk6;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u000b\u0001\u0000\u0001\u0012\u000b\u0000\u0000\u0000\u0001:\u0000\u00025\u0000\u00033\u0000\u0005\u023b\u0000\u0006<\u0000\u0008<\u0000\t<\u0000\n<\u0000\u000b?\u0000\u0011\u023b\u0000\u0012=\u0000"

    .line 13
    sget-object p3, Lbd6;->DEFAULT_INSTANCE:Lbd6;

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
