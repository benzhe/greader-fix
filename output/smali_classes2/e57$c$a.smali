.class public Le57$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le57$c;->i(Lx47;Lz57$a;ZLi47;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lx47;

.field public final synthetic f:Lz57$a;

.field public final synthetic g:Li47;

.field public final synthetic h:Le57$c;


# direct methods
.method public constructor <init>(Le57$c;Lx47;Lz57$a;Li47;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le57$c$a;->h:Le57$c;

    iput-object p2, p0, Le57$c$a;->e:Lx47;

    iput-object p3, p0, Le57$c$a;->f:Lz57$a;

    iput-object p4, p0, Le57$c$a;->g:Li47;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le57$c$a;->h:Le57$c;

    iget-object v1, p0, Le57$c$a;->e:Lx47;

    iget-object v2, p0, Le57$c$a;->f:Lz57$a;

    iget-object v3, p0, Le57$c$a;->g:Li47;

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Le57$c;->e(Lx47;Lz57$a;Li47;)V

    return-void
.end method
