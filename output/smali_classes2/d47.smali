.class public abstract Ld47;
.super Lc47$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ld47$a;
    }
.end annotation


# static fields
.field public static final a:Ll47$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ld47$a;

    invoke-direct {v0}, Ld47$a;-><init>()V

    .line 2
    new-instance v1, Ll47$b;

    invoke-direct {v1, v0}, Ll47$b;-><init>(Ljava/lang/Object;)V

    .line 3
    sput-object v1, Ld47;->a:Ll47$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc47$c;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract b()Ljava/lang/String;
.end method

.method public abstract c()I
.end method

.method public abstract d()Z
.end method

.method public e(Ljava/util/Map;)Ll47$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Ll47$b;"
        }
    .end annotation

    .line 1
    sget-object p1, Ld47;->a:Ll47$b;

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Ld47;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "policy"

    .line 3
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 4
    invoke-virtual {p0}, Ld47;->c()I

    move-result v1

    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Lnd5;->a(Ljava/lang/String;I)Lnd5;

    .line 5
    invoke-virtual {p0}, Ld47;->d()Z

    move-result v1

    const-string v2, "available"

    invoke-virtual {v0, v2, v1}, Lnd5;->c(Ljava/lang/String;Z)Lnd5;

    .line 6
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
