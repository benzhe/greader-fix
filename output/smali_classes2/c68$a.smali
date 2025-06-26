.class public Lc68$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La78;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc68;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La78<",
        "Lz48;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu68;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lz68;->a:La78;

    invoke-interface {p1, v0}, Lu68;->w(La78;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lz48;

    if-eqz p1, :cond_0

    .line 2
    instance-of v0, p1, La58;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
