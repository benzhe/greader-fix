.class public final Ld21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda1;


# instance fields
.field public final e:Lwk2;

.field public final f:Lhl2;

.field public final g:Lhq2;

.field public final h:Ljq2;


# direct methods
.method public constructor <init>(Lhl2;Ljq2;Lhq2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld21;->f:Lhl2;

    .line 3
    iput-object p2, p0, Ld21;->h:Ljq2;

    .line 4
    iput-object p3, p0, Ld21;->g:Lhq2;

    .line 5
    iget-object p1, p1, Lhl2;->b:Lfl2;

    iget-object p1, p1, Lfl2;->b:Lwk2;

    iput-object p1, p0, Ld21;->e:Lwk2;

    return-void
.end method


# virtual methods
.method public final Q(Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 4

    .line 1
    iget-object p1, p0, Ld21;->h:Ljq2;

    iget-object v0, p0, Ld21;->g:Lhq2;

    iget-object v1, p0, Ld21;->f:Lhl2;

    iget-object v2, p0, Ld21;->e:Lwk2;

    iget-object v2, v2, Lwk2;->a:Ljava/util/List;

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v1, v3, v2}, Lhq2;->a(Lhl2;Lsk2;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-virtual {p1, v0}, Ljq2;->b(Ljava/util/List;)V

    return-void
.end method
