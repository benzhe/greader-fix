.class public final Llz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lzy$a;


# direct methods
.method public constructor <init>(Lzy$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llz;->e:Lzy$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Llz;->e:Lzy$a;

    .line 2
    invoke-virtual {v0}, Lzy$a;->g()V

    return-void
.end method
