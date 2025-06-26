.class public final Lnz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lmz;


# direct methods
.method public constructor <init>(Lmz;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnz;->e:Lmz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnz;->e:Lmz;

    iget-object v0, v0, Lmz;->a:Lzy$a;

    .line 2
    iget-object v0, v0, Lzy$a;->f:Lny$f;

    .line 3
    invoke-interface {v0}, Lny$f;->disconnect()V

    return-void
.end method
