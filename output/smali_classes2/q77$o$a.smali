.class public final Lq77$o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq77$o;->a(Lx47;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic e:Lx47;

.field public final synthetic f:Lq77$o;


# direct methods
.method public constructor <init>(Lq77$o;Lx47;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq77$o$a;->f:Lq77$o;

    iput-object p2, p0, Lq77$o$a;->e:Lx47;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lq77$o$a;->f:Lq77$o;

    iget-object v1, p0, Lq77$o$a;->e:Lx47;

    invoke-static {v0, v1}, Lq77$o;->c(Lq77$o;Lx47;)V

    return-void
.end method
