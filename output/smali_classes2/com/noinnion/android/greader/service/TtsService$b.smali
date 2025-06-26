.class public final Lcom/noinnion/android/greader/service/TtsService$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lkv6;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/service/TtsService;

.field public final synthetic f:Lkv6;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/service/TtsService;Lkv6;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/service/TtsService$b;->e:Lcom/noinnion/android/greader/service/TtsService;

    iput-object p2, p0, Lcom/noinnion/android/greader/service/TtsService$b;->f:Lkv6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$b;->e:Lcom/noinnion/android/greader/service/TtsService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/noinnion/android/greader/service/TtsService$b;->e:Lcom/noinnion/android/greader/service/TtsService;

    iget-object v2, p0, Lcom/noinnion/android/greader/service/TtsService$b;->f:Lkv6;

    iget-wide v2, v2, Lkv6;->a:J

    .line 3
    iput-wide v2, v1, Lcom/noinnion/android/greader/service/TtsService;->l:J

    .line 4
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.noinnion.android.greader.reader.action.NEW_ITEM"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "itemId"

    .line 5
    invoke-virtual {v4, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 6
    invoke-static {v1}, Lyd;->a(Landroid/content/Context;)Lyd;

    move-result-object v1

    invoke-virtual {v1, v4}, Lyd;->c(Landroid/content/Intent;)Z

    .line 7
    iget-object v1, p0, Lcom/noinnion/android/greader/service/TtsService$b;->f:Lkv6;

    iget-wide v1, v1, Lkv6;->a:J

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lap6;->l(Landroid/content/Context;JZ)Lap6;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v1, p0, Lcom/noinnion/android/greader/service/TtsService$b;->f:Lkv6;

    iput-object v0, v1, Lkv6;->c:Lap6;

    return-object v1

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessException;

    const-string v1, "item not available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
