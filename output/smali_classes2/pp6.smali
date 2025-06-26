.class public final Lpp6;
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
        "Ljava/lang/String;",
        "Lkv6;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/service/TtsService$c;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/service/TtsService$c;)V
    .locals 0

    iput-object p1, p0, Lpp6;->e:Lcom/noinnion/android/greader/service/TtsService$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "language"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lpp6;->e:Lcom/noinnion/android/greader/service/TtsService$c;

    iget-object v0, v0, Lcom/noinnion/android/greader/service/TtsService$c;->f:Lkv6;

    iput-object p1, v0, Lkv6;->d:Ljava/lang/String;

    return-object v0
.end method
