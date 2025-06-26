.class public final synthetic Lb42;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ly32;

.field public final f:Lhl2;

.field public final g:Lsk2;

.field public final h:Lmz1;


# direct methods
.method public constructor <init>(Ly32;Lhl2;Lsk2;Lmz1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb42;->e:Ly32;

    iput-object p2, p0, Lb42;->f:Lhl2;

    iput-object p3, p0, Lb42;->g:Lsk2;

    iput-object p4, p0, Lb42;->h:Lmz1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lb42;->e:Ly32;

    iget-object v1, p0, Lb42;->f:Lhl2;

    iget-object v2, p0, Lb42;->g:Lsk2;

    iget-object v3, p0, Lb42;->h:Lmz1;

    .line 2
    iget-object v0, v0, Ly32;->d:Lw32;

    .line 3
    invoke-static {v1, v2, v3}, Lw32;->c(Lhl2;Lsk2;Lmz1;)V

    return-void
.end method
