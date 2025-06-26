.class public final Ley4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/zzas;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Lky4;


# direct methods
.method public constructor <init>(Lky4;Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ley4;->g:Lky4;

    iput-object p2, p0, Ley4;->e:Lcom/google/android/gms/measurement/internal/zzas;

    iput-object p3, p0, Ley4;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Ley4;->g:Lky4;

    .line 1
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 2
    invoke-virtual {v0}, Lj25;->l()V

    iget-object v0, p0, Ley4;->g:Lky4;

    .line 3
    iget-object v0, v0, Lky4;->e:Lj25;

    .line 4
    iget-object v1, p0, Ley4;->e:Lcom/google/android/gms/measurement/internal/zzas;

    iget-object v2, p0, Ley4;->f:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1, v2}, Lj25;->W(Lcom/google/android/gms/measurement/internal/zzas;Ljava/lang/String;)V

    return-void
.end method
