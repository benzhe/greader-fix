.class public final Lro6;
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
        "Ljava/lang/Iterable<",
        "+",
        "Lcom/android/billingclient/api/Purchase;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final e:Lro6;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lro6;

    invoke-direct {v0}, Lro6;-><init>()V

    sput-object v0, Lro6;->e:Lro6;

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

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
