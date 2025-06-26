.class public final synthetic Ll36;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lm36;


# direct methods
.method public constructor <init>(Lm36;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll36;->e:Lm36;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Ll36;->e:Lm36;

    .line 1
    iget-boolean v1, v0, Lm36;->f:Z

    if-eqz v1, :cond_0

    iget-boolean v2, v0, Lm36;->g:Z

    if-nez v2, :cond_1

    :cond_0
    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lm36;->f:Z

    return-void
.end method
