package com.supinfo.suprail.entity.association;

import java.io.Serializable;

public class StationLineAssociationId implements Serializable {
	private long id;

    public int hashCode() {
      return (int)(id);
    }

  public boolean equals(Object object) {
    if (object instanceof StationLineAssociationId) {
    	StationLineAssociationId otherId = (StationLineAssociationId) object;
    	return otherId.id == this.id;
    }
    return false;
  }
}
