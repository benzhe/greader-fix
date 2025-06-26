.class public final Lcom/noinnion/android/greader/service/TtsService$e;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/noinnion/android/greader/service/TtsService;->c(Lkv6;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Ljava/lang/Throwable;",
        "Lyj7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/service/TtsService;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/service/TtsService;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/service/TtsService$e;->e:Lcom/noinnion/android/greader/service/TtsService;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "throwable"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService$e;->e:Lcom/noinnion/android/greader/service/TtsService;

    invoke-virtual {p1}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$e;->e:Lcom/noinnion/android/greader/service/TtsService;

    const v1, 0x7f110334

    invoke-virtual {v0, v1}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ln56;->X1(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService$e;->e:Lcom/noinnion/android/greader/service/TtsService;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lcom/noinnion/android/greader/service/TtsService;->m(Z)V

    .line 6
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1
.end method
