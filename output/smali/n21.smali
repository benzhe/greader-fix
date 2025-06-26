.class public final synthetic Ln21;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lk21;


# direct methods
.method public constructor <init>(Lk21;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln21;->e:Lk21;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ln21;->e:Lk21;

    .line 2
    iget-object v0, v0, Lk21;->a:Ll21;

    .line 3
    iget-object v0, v0, Ll21;->d:Lq21;

    .line 4
    invoke-virtual {v0}, Lq21;->d()V

    return-void
.end method
