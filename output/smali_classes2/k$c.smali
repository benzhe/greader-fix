.class public final Lk$c;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Ltl7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Ltl7<",
        "Lhq7<",
        "*>;",
        "Lrk7$a;",
        "Lhq7<",
        "*>;>;"
    }
.end annotation


# static fields
.field public static final e:Lk$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk$c;

    invoke-direct {v0}, Lk$c;-><init>()V

    sput-object v0, Lk$c;->e:Lk$c;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lhq7;

    check-cast p2, Lrk7$a;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    instance-of p1, p2, Lhq7;

    if-nez p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    move-object p1, p2

    check-cast p1, Lhq7;

    :goto_0
    return-object p1
.end method
