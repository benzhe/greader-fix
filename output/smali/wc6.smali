.class public final Lwc6;
.super Lgj6;
.source "SourceFile"

# interfaces
.implements Lbk6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwc6$b;,
        Lwc6$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgj6<",
        "Lwc6;",
        "Lwc6$b;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lwc6;

.field public static final FIELDS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lik6;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lik6<",
            "Lwc6;",
            ">;"
        }
    .end annotation
.end field


# instance fields
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


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lwc6;

    invoke-direct {v0}, Lwc6;-><init>()V

    .line 2
    sput-object v0, Lwc6;->DEFAULT_INSTANCE:Lwc6;

    .line 3
    const-class v1, Lwc6;

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
    iput-object v0, p0, Lwc6;->fields_:Luj6;

    return-void
.end method

.method public static synthetic B()Lwc6;
    .locals 1

    .line 1
    sget-object v0, Lwc6;->DEFAULT_INSTANCE:Lwc6;

    return-object v0
.end method

.method public static C(Lwc6;)Ljava/util/Map;
    .locals 2

    .line 1
    iget-object v0, p0, Lwc6;->fields_:Luj6;

    .line 2
    iget-boolean v1, v0, Luj6;->e:Z

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Luj6;->d()Luj6;

    move-result-object v0

    iput-object v0, p0, Lwc6;->fields_:Luj6;

    .line 4
    :cond_0
    iget-object p0, p0, Lwc6;->fields_:Luj6;

    return-object p0
.end method

.method public static D()Lwc6;
    .locals 1

    .line 1
    sget-object v0, Lwc6;->DEFAULT_INSTANCE:Lwc6;

    return-object v0
.end method

.method public static I()Lwc6$b;
    .locals 1

    .line 1
    sget-object v0, Lwc6;->DEFAULT_INSTANCE:Lwc6;

    invoke-virtual {v0}, Lgj6;->q()Lgj6$a;

    move-result-object v0

    check-cast v0, Lwc6$b;

    return-object v0
.end method


# virtual methods
.method public E()I
    .locals 1

    .line 1
    iget-object v0, p0, Lwc6;->fields_:Luj6;

    .line 2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public F()Ljava/util/Map;
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
    iget-object v0, p0, Lwc6;->fields_:Luj6;

    .line 2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public G(Ljava/lang/String;Lbd6;)Lbd6;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object p2, p0, Lwc6;->fields_:Luj6;

    .line 3
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbd6;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public H(Ljava/lang/String;)Lbd6;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v0, p0, Lwc6;->fields_:Luj6;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbd6;

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
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
    sget-object p1, Lwc6;->PARSER:Lik6;

    if-nez p1, :cond_1

    .line 4
    const-class p2, Lwc6;

    monitor-enter p2

    .line 5
    :try_start_0
    sget-object p1, Lwc6;->PARSER:Lik6;

    if-nez p1, :cond_0

    .line 6
    new-instance p1, Lgj6$b;

    sget-object p3, Lwc6;->DEFAULT_INSTANCE:Lwc6;

    invoke-direct {p1, p3}, Lgj6$b;-><init>(Lgj6;)V

    .line 7
    sput-object p1, Lwc6;->PARSER:Lik6;

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
    sget-object p1, Lwc6;->DEFAULT_INSTANCE:Lwc6;

    return-object p1

    .line 10
    :pswitch_2
    new-instance p1, Lwc6$b;

    invoke-direct {p1, p3}, Lwc6$b;-><init>(Lwc6$a;)V

    return-object p1

    .line 11
    :pswitch_3
    new-instance p1, Lwc6;

    invoke-direct {p1}, Lwc6;-><init>()V

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "fields_"

    aput-object v0, p1, p3

    .line 12
    sget-object p3, Lwc6$c;->a:Ltj6;

    aput-object p3, p1, p2

    const-string p2, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012"

    .line 13
    sget-object p3, Lwc6;->DEFAULT_INSTANCE:Lwc6;

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
