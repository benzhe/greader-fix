.class public final Lcom/noinnion/android/greader/service/TtsService$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Luc7;


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
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Luc7<",
        "Lkv6;",
        "Lec7<",
        "+",
        "Lkv6;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/service/TtsService;

.field public final synthetic f:Lkv6;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/service/TtsService;Lkv6;)V
    .locals 0

    iput-object p1, p0, Lcom/noinnion/android/greader/service/TtsService$c;->e:Lcom/noinnion/android/greader/service/TtsService;

    iput-object p2, p0, Lcom/noinnion/android/greader/service/TtsService$c;->f:Lkv6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lkv6;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/noinnion/android/greader/service/TtsService$c;->e:Lcom/noinnion/android/greader/service/TtsService;

    invoke-virtual {v0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "service_tts_auto_detect_language"

    .line 4
    invoke-static {v0, v2, v1}, Liw6;->f(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lkv6;->c:Lap6;

    iget-object v1, v1, Lap6;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lkv6;->c:Lap6;

    iget-object p1, p1, Lap6;->i:Ljava/lang/String;

    invoke-static {p1}, Ln56;->l2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "text"

    .line 6
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lay6;

    invoke-direct {v0, p1}, Lay6;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance p1, Leh7;

    invoke-direct {p1, v0}, Leh7;-><init>(Ldc7;)V

    const-string v0, "Single.create { emiter -\u2026              }\n        }"

    .line 9
    invoke-static {p1, v0}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lpp6;

    invoke-direct {v0, p0}, Lpp6;-><init>(Lcom/noinnion/android/greader/service/TtsService$c;)V

    invoke-virtual {p1, v0}, Lac7;->e(Luc7;)Lac7;

    move-result-object p1

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lcom/noinnion/android/greader/service/TtsService$c;->f:Lkv6;

    invoke-static {p1}, Lac7;->d(Ljava/lang/Object;)Lac7;

    move-result-object p1

    :goto_0
    return-object p1
.end method
