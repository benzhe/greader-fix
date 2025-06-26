.class public final synthetic Lux5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw35;


# static fields
.field public static final a:Lux5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lux5;

    invoke-direct {v0}, Lux5;-><init>()V

    sput-object v0, Lux5;->a:Lux5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le45;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lvx5;->a:Ljava/util/Comparator;

    .line 2
    invoke-virtual {p1}, Le45;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Le45;->l()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Void;

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Le45;->k()Ljava/lang/Exception;

    move-result-object p1

    .line 5
    instance-of v0, p1, Ly47;

    if-eqz v0, :cond_1

    .line 6
    check-cast p1, Ly47;

    .line 7
    iget-object p1, p1, Ly47;->e:Lx47;

    .line 8
    invoke-static {p1}, Lvx5;->d(Lx47;)Lzo5;

    move-result-object p1

    goto :goto_0

    .line 9
    :cond_1
    instance-of v0, p1, Lz47;

    if-eqz v0, :cond_2

    .line 10
    check-cast p1, Lz47;

    .line 11
    iget-object p1, p1, Lz47;->e:Lx47;

    .line 12
    invoke-static {p1}, Lvx5;->d(Lx47;)Lzo5;

    move-result-object p1

    .line 13
    :cond_2
    :goto_0
    instance-of v0, p1, Lzo5;

    if-eqz v0, :cond_3

    .line 14
    throw p1

    .line 15
    :cond_3
    new-instance v0, Lzo5;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lzo5$a;->h:Lzo5$a;

    invoke-direct {v0, v1, v2, p1}, Lzo5;-><init>(Ljava/lang/String;Lzo5$a;Ljava/lang/Throwable;)V

    throw v0
.end method
