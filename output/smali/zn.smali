.class public final Lzn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lln;


# direct methods
.method public constructor <init>(Lln;)V
    .locals 0

    iput-object p1, p0, Lzn;->e:Lln;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lzn;->e:Lln;

    .line 1
    sget-object v1, Lun;->m:Lin;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lln;->a(Lin;Ljava/util/List;)V

    return-void
.end method
