.class public final synthetic Lyi2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Lwi2;


# direct methods
.method public constructor <init>(Lwi2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyi2;->e:Lwi2;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lyi2;->e:Lwi2;

    .line 2
    iget-object v0, v0, Lwi2;->c:Lui2;

    .line 3
    iget-object v0, v0, Lui2;->e:Lej2;

    .line 4
    invoke-virtual {v0}, Lej2;->onAdLoaded()V

    return-void
.end method
