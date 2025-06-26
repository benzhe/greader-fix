.class public Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public d:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;->a:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;->b:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;->c:Ljava/lang/Class;

    .line 5
    iput-object p5, p0, Lcom/noinnion/android/greader/ui/subscription/SubscribeActivity$c;->d:Landroid/os/Bundle;

    return-void
.end method
