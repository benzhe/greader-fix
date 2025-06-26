.class public Ll9$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ll9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ll9;


# direct methods
.method public constructor <init>(Ll9;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ll9$a;->f:Ll9;

    iput-object p2, p0, Ll9$a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ll9$a;->f:Ll9;

    iget-object v0, v0, Ll9;->g:Lk9$c;

    iget-object v1, p0, Ll9$a;->e:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lk9$c;->a(Ljava/lang/Object;)V

    return-void
.end method
