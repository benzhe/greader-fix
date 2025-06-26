.class public final Lto6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Luc7<",
        "Ljava/util/List<",
        "+",
        "Lcom/android/billingclient/api/Purchase;",
        ">;",
        "Lvb7<",
        "+",
        "Lcom/android/billingclient/api/Purchase;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final e:Lto6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lto6;

    invoke-direct {v0}, Lto6;-><init>()V

    sput-object v0, Lto6;->e:Lto6;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/util/List;

    const-string v0, "purchases"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lbg7;->e:Lbg7;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lek7;->f(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lrb7;->i(Ljava/lang/Object;)Lrb7;

    move-result-object p1

    :goto_0
    return-object p1
.end method
