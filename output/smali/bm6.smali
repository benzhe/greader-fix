.class public final synthetic Lbm6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lhm6;


# direct methods
.method public synthetic constructor <init>(Lhm6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbm6;->e:Lhm6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lbm6;->e:Lhm6;

    const/4 v1, 0x1

    .line 1
    iput v1, v0, Lhm6;->d:I

    .line 2
    invoke-virtual {v0}, Lhm6;->h()V

    return-void
.end method
