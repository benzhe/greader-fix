.class public final Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$a;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lel7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/ui/home/HomeBaseActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lel7<",
        "Luo6;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Landroid/content/ComponentCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/ComponentCallbacks;Lk18;Lel7;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$a;->e:Landroid/content/ComponentCallbacks;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Luo6;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/ui/home/HomeBaseActivity$a;->e:Landroid/content/ComponentCallbacks;

    .line 2
    invoke-static {v0}, Lkt7;->j(Landroid/content/ComponentCallbacks;)Lk08;

    move-result-object v0

    .line 3
    iget-object v0, v0, Lk08;->a:Ln18;

    .line 4
    invoke-virtual {v0}, Ln18;->a()Lo18;

    move-result-object v0

    .line 5
    const-class v1, Luo6;

    invoke-static {v1}, Lsm7;->a(Ljava/lang/Class;)Lhn7;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lo18;->a(Lhn7;Lk18;Lel7;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
