.class public final Lum$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final e:Lum;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lum<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final f:Lie5;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lie5<",
            "+TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lum;Lie5;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lum<",
            "TV;>;",
            "Lie5<",
            "+TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lum$g;->e:Lum;

    .line 3
    iput-object p2, p0, Lum$g;->f:Lie5;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lum$g;->e:Lum;

    iget-object v0, v0, Lum;->e:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lum$g;->f:Lie5;

    invoke-static {v0}, Lum;->e(Lie5;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    sget-object v1, Lum;->j:Lum$b;

    iget-object v2, p0, Lum$g;->e:Lum;

    invoke-virtual {v1, v2, p0, v0}, Lum$b;->b(Lum;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lum$g;->e:Lum;

    invoke-static {v0}, Lum;->b(Lum;)V

    :cond_1
    return-void
.end method
