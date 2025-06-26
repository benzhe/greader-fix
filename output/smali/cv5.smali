.class public final Lcv5;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcv5$b;,
        Lcv5$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lcv5;",
        "Lcv5$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcv5;

.field public static final DOCUMENT_FIELD_NUMBER:I = 0x2

.field public static final HAS_COMMITTED_MUTATIONS_FIELD_NUMBER:I = 0x4

.field public static final NO_DOCUMENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lik6; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lcv5;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN_DOCUMENT_FIELD_NUMBER:I = 0x3


# instance fields
.field private documentTypeCase_:I

.field private documentType_:Ljava/lang/Object;

.field private hasCommittedMutations_:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcv5;

    invoke-direct {v0}, Lcv5;-><init>()V

    .line 2
    sput-object v0, Lcv5;->DEFAULT_INSTANCE:Lcv5;

    .line 3
    const-class v1, Lcv5;

    invoke-static {v1, v0}, Lgj6;->z(Ljava/lang/Class;Lgj6;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lgj6;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcv5;->documentTypeCase_:I

    return-void
.end method

.method public static synthetic B()Lcv5;
    .locals 1

    .line 1
    sget-object v0, Lcv5;->DEFAULT_INSTANCE:Lcv5;

    return-object v0
.end method

.method public static C(Lcv5;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcv5;->hasCommittedMutations_:Z

    return-void
.end method

.method public static D(Lcv5;Ldv5;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcv5;->documentType_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 4
    iput p1, p0, Lcv5;->documentTypeCase_:I

    return-void
.end method

.method public static E(Lcv5;Lmc6;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcv5;->documentType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcv5;->documentTypeCase_:I

    return-void
.end method

.method public static F(Lcv5;Lfv5;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iput-object p1, p0, Lcv5;->documentType_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 4
    iput p1, p0, Lcv5;->documentTypeCase_:I

    return-void
.end method

.method public static L()Lcv5$b;
    .locals 1

    .line 1
    sget-object v0, Lcv5;->DEFAULT_INSTANCE:Lcv5;

    invoke-virtual {v0}, Lgj6;->q()Lgj6$a;

    move-result-object v0

    check-cast v0, Lcv5$b;

    return-object v0
.end method

.method public static M([B)Lcv5;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lkj6;
        }
    .end annotation

    .line 1
    sget-object v0, Lcv5;->DEFAULT_INSTANCE:Lcv5;

    invoke-static {v0, p0}, Lgj6;->x(Lgj6;[B)Lgj6;

    move-result-object p0

    check-cast p0, Lcv5;

    return-object p0
.end method


# virtual methods
.method public G()Lmc6;
    .locals 2

    .line 1
    iget v0, p0, Lcv5;->documentTypeCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcv5;->documentType_:Ljava/lang/Object;

    check-cast v0, Lmc6;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lmc6;->F()Lmc6;

    move-result-object v0

    return-object v0
.end method

.method public H()Lcv5$c;
    .locals 2

    .line 1
    iget v0, p0, Lcv5;->documentTypeCase_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcv5$c;->g:Lcv5$c;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcv5$c;->f:Lcv5$c;

    goto :goto_0

    .line 4
    :cond_2
    sget-object v0, Lcv5$c;->e:Lcv5$c;

    goto :goto_0

    .line 5
    :cond_3
    sget-object v0, Lcv5$c;->h:Lcv5$c;

    :goto_0
    return-object v0
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcv5;->hasCommittedMutations_:Z

    return v0
.end method

.method public J()Ldv5;
    .locals 2

    .line 1
    iget v0, p0, Lcv5;->documentTypeCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcv5;->documentType_:Ljava/lang/Object;

    check-cast v0, Ldv5;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Ldv5;->E()Ldv5;

    move-result-object v0

    return-object v0
.end method

.method public K()Lfv5;
    .locals 2

    .line 1
    iget v0, p0, Lcv5;->documentTypeCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcv5;->documentType_:Ljava/lang/Object;

    check-cast v0, Lfv5;

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lfv5;->E()Lfv5;

    move-result-object v0

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
    sget-object p1, Lcv5;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lcv5;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lcv5;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lcv5;->DEFAULT_INSTANCE:Lcv5;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lcv5;->PARSER:Lik6;

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
    sget-object p1, Lcv5;->DEFAULT_INSTANCE:Lcv5;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lcv5$b;

    invoke-direct {p1, p3}, Lcv5$b;-><init>(Lcv5$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lcv5;

    invoke-direct {p1}, Lcv5;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "documentType_"

    aput-object v0, p1, p3

    const-string p3, "documentTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 12
    const-class p3, Ldv5;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lmc6;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lfv5;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "hasCommittedMutations_"

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004\u0007"

    .line 13
    sget-object p3, Lcv5;->DEFAULT_INSTANCE:Lcv5;

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
