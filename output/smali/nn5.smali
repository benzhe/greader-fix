.class public Lnn5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lon5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lon5<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field public static final a:Lnn5;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lnn5;

    invoke-direct {v0}, Lnn5;-><init>()V

    sput-object v0, Lnn5;->a:Lnn5;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lon5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lon5<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public b(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lon5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lon5<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    new-instance p3, Lpn5;

    invoke-direct {p3, p1, p2}, Lpn5;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p3
.end method

.method public c(Ljava/lang/Object;Ljava/util/Comparator;)Lon5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lon5<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Lon5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lon5<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;Lon5$a;Lon5;Lon5;)Lon5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lon5$a;",
            "Lon5<",
            "TK;TV;>;",
            "Lon5<",
            "TK;TV;>;)",
            "Lon5<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public g()Lon5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lon5<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lon5;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lon5<",
            "TK;TV;>;"
        }
    .end annotation

    return-object p0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
