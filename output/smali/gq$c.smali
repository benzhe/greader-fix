.class public final Lgq$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgq;->d(Landroid/app/Activity;Lhn;)Lhb7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Luc7<",
        "Len;",
        "Lw38<",
        "+",
        "Lin;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Landroid/app/Activity;

.field public final synthetic f:Lhn;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lhn;)V
    .locals 0

    iput-object p1, p0, Lgq$c;->e:Landroid/app/Activity;

    iput-object p2, p0, Lgq$c;->f:Lhn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Len;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lgq$c;->e:Landroid/app/Activity;

    iget-object v1, p0, Lgq$c;->f:Lhn;

    invoke-virtual {p1, v0, v1}, Len;->d(Landroid/app/Activity;Lhn;)Lin;

    move-result-object p1

    const-string v0, "it.launchBillingFlow(activity, params)"

    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget v0, Lmb7;->e:I

    .line 5
    new-instance v0, Lze7;

    invoke-direct {v0, p1}, Lze7;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
